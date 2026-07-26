<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_sociallinks.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_sociallinks.description',
        'value' => 'garvino_sociallinks',
        'icon' => 'theme-garvino-content-socialmedia',
        'group' => 'special',
    ],
    '
        header,
        tx_themegarvino_list_elements,
        ',
    [
        'columnsOverrides' => [
            'header' => [
                'label' => 'theme_garvino.backend_fields:tt_content.header.label.ALT',
                'description' => 'theme_garvino.backend_fields:tt_content.header.description.ALT',
            ],
            'tx_themegarvino_list_elements' => [
                'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_list_elements.types.garvino_sociallinks.label',
                'description' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_list_elements.types.garvino_sociallinks.description',
                'config' => [
                    'overrideChildTca' => [
                        'types' => [
                            '0' => [
                                'showitem' => '--palette--;;linklabel',
                            ],
                        ],
                        'columns' => [
                            'link' => [
                                'config' => [
                                    'allowedTypes' => ['url', 'email', 'telephone'],
                                    'required' => true,
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
);
