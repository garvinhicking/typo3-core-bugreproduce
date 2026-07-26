<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_linklist.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_linklist.description',
        'value' => 'garvino_linklist',
        'icon' => 'content-bullets',
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
