<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_author.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_author.description',
        'value' => 'garvino_author',
        'icon' => 'content-user',
        'group' => 'default',
    ],
    '
        --palette--;;garvino_person,
        bodytext,
        tx_themegarvino_list_elements
    ',
    [
        'columnsOverrides' => [
            'header' => [
                'label' => 'theme_garvino.backend_fields:tt_content.header.types.person-palette.label',
                'config' => [
                    'required' => true,
                ],
            ],
            'subheader' => [
                'label' => 'theme_garvino.backend_fields:tt_content.subheader.types.person-palette.label',
            ],
            'bodytext' => [
                'label' => 'theme_garvino.backend_fields:tt_content.bodytext.types.garvino_author.label',
                'config' => [
                    'rows' => 3,
                ],
            ],
            'tx_themegarvino_list_elements' => [
                'label' => 'theme_garvino.backend_fields:tt_content.tx_themegarvino_list_elements.types.garvino_author.label',
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
            'image' => [
                'config' => [
                    'overrideChildTca' => [
                        'columns' => [
                            'crop' => [
                                'config' => [
                                    'cropVariants' => [
                                        'default' =>  [
                                            'title' => 'theme_garvino.backend_fields:cropVariants.default',
                                            'allowedAspectRatios' => [
                                                '1:1' => [
                                                    'title' => '1:1',
                                                    'value' => 1,
                                                ],
                                            ],
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
);
