<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

// Add item groups for field 'CType'
ExtensionManagementUtility::addTcaSelectItemGroup(
    'tt_content',
    'CType',
    'garvino_hero',
    'theme_garvino.backend_fields:tt_content.group.garvino_hero',
    'before:default'
);
ExtensionManagementUtility::addTcaSelectItemGroup(
    'tt_content',
    'CType',
    'garvino_teaser',
    'theme_garvino.backend_fields:tt_content.group.garvino_teaser',
    'after:default'
);

$additionalColumns = [
    // add field for saving the list of elements for a list or a slider
    'tx_themegarvino_list_elements' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_list_elements',
        'config' => [
            'type' => 'inline',
            'foreign_table' => 'tx_themegarvino_list_item',
            'foreign_field' => 'uid_foreign',
            'foreign_table_field' => 'tablename',
            'foreign_match_fields' => [
                'fieldname' => 'tx_themegarvino_list_elements',
            ],
            'appearance' => [
                'showSynchronizationLink' => false,
                'showAllLocalizationLink' => true,
                'showPossibleLocalizationRecords' => true,
                'expandSingle' => true,
                'newRecordLinkAddTitle' => false,
                'newRecordLinkTitle' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_list_elements.appearance.newRecordLinkTitle',
                'useSortable' => true,
                'useCombination' => false,
            ],
        ],
    ],

    // link fields
    'tx_themegarvino_link' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link',
        'config' => [
            'type' => 'link',
            'size' => 30,
            'appearance' => [
                'browserTitle' => 'frontend.ttc:header_link_formlabel',
            ],
        ],
    ],
    'tx_themegarvino_link_label' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_label',
        'config' => [
            'type' => 'input',
            'size' => 30,
            'max' => 255,
        ],
    ],
    'tx_themegarvino_link_config' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config',
        'config' => [
            'type' => 'select',
            'renderType' => 'selectSingle',
            'items' => [
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.0',
                    'value' => '0',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.secondary',
                    'value' => 'secondary',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.soft',
                    'value' => 'soft',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.text',
                    'value' => 'text',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.inverted',
                    'value' => 'inverted',
                    'group' => 'inverted',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.inverted-secondary',
                    'value' => 'inverted-secondary',
                    'group' => 'inverted',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.inverted-soft',
                    'value' => 'inverted-soft',
                    'group' => 'inverted',
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.I.inverted-text',
                    'value' => 'inverted-text',
                    'group' => 'inverted',
                ],
            ],
            'itemGroups' => [
                'inverted' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_config.itemgroup.inverted',
            ],
        ],
    ],
    'tx_themegarvino_link_icon' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_link_icon',
        'config' => [
            'type' => 'select',
            'renderType' => 'selectSingle',
            'items' => [],
        ],
    ],

    'tx_themegarvino_header_style' => [
        'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_header_style',
        'config' => [
            'default' => 0,
            'type' => 'select',
            'renderType' => 'selectSingle',
            'items' => [
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_header_style.option.default',
                    'value' => 0,
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_header_style.option.large',
                    'value' => 1,
                ],
                [
                    'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_header_style.option.small',
                    'value' => 2,
                ],
            ],
        ],
    ],
];

ExtensionManagementUtility::addTCAcolumns('tt_content', $additionalColumns);

$GLOBALS['TCA']['tt_content']['palettes']['garvino_linklabel'] = [
    'label' => 'theme_garvino.backend_fields:tt_content.palettes.garvino_linklabel',
    'showitem' => 'tx_themegarvino_link, tx_themegarvino_link_label',
];

$GLOBALS['TCA']['tt_content']['palettes']['garvino_linklabelicon'] = [
    'label' => 'theme_garvino.backend_fields:tt_content.palettes.garvino_linklabelicon',
    'showitem' => 'tx_themegarvino_link, tx_themegarvino_link_label, --linebreak--, tx_themegarvino_link_icon',
];

$GLOBALS['TCA']['tt_content']['palettes']['garvino_linklabelconfig'] = [
    'label' => 'theme_garvino.backend_fields:tt_content.palettes.garvino_linklabelconfig',
    'showitem' => 'tx_themegarvino_link, tx_themegarvino_link_label, --linebreak--, tx_themegarvino_link_config',
];

$GLOBALS['TCA']['tt_content']['palettes']['garvino_linklabeliconconfig'] = [
    'label' => 'theme_garvino.backend_fields:tt_content.palettes.garvino_linklabeliconconfig',
    'showitem' => 'tx_themegarvino_link, tx_themegarvino_link_label, --linebreak--, tx_themegarvino_link_icon, tx_themegarvino_link_config',
];

// add link palette to CTypes
ExtensionManagementUtility::addToAllTCAtypes(
    'tt_content',
    '--palette--;;garvino_linklabeliconconfig',
    'text,textmedia,textpic',
    'after:bodytext',
);

// add header types select to header palette
ExtensionManagementUtility::addFieldsToPalette(
    'tt_content',
    'header',
    'tx_themegarvino_header_style',
    'after:header_layout'
);
ExtensionManagementUtility::addFieldsToPalette(
    'tt_content',
    'headers',
    'tx_themegarvino_header_style',
    'after:header_layout'
);

$GLOBALS['TCA']['tt_content']['palettes']['garvino_person'] = [
    'label' => 'theme_garvino.backend_fields:tt_content.palettes.garvino_person',
    'showitem' => 'header, --linebreak--, subheader, --linebreak--, image',
];
