<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_textmedia_teaser.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_textmedia_teaser.description',
        'value' => 'garvino_textmedia_teaser',
        'icon' => 'content-container-columns-1',
        'group' => 'garvino_teaser',
    ],
    '
            --palette--;;headers,
            bodytext,
            --palette--;;garvino_linklabelicon,
        --div--;core.form.tabs:images,
            image,
    ',
    [
        'columnsOverrides' => [
            'bodytext' => [
                'config' => [
                    'enableRichtext' => true,
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
                                                '3:2' => [
                                                    'title' => '3:2',
                                                    'value' => 1.5,
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
            'subheader' => [
                'label' => 'theme_garvino.backend_fields:tt_content.subheader.types.garvino_textmedia_teaser.label',
            ],
        ],
    ],
);
