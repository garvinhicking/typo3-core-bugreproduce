<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_testimonial.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_testimonial.description',
        'value' => 'garvino_testimonial',
        'icon' => 'content-quote',
        'group' => 'default',
    ],
    '
        bodytext,
        --palette--;;garvino_person,
        --div--;core.form.tabs:appearance,
        --palette--;;frames
    ',
    [
        'columnsOverrides' => [
            'header' => [
                'label' => 'theme_garvino.backend_fields:tt_content.header.types.person-palette.label',
            ],
            'subheader' => [
                'label' => 'theme_garvino.backend_fields:tt_content.subheader.types.person-palette.label',
            ],
            'bodytext' => [
                'label' => 'theme_garvino.backend_fields:tt_content.bodytext.types.person-palette.label',
                'config' => [
                    'rows' => 3,
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
