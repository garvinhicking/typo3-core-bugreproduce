<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_textteaser.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_textteaser.description',
        'value' => 'garvino_textteaser',
        'icon' => 'content-textmedia',
        'group' => 'garvino_teaser',
    ],
    '
        --palette--;;headers,
        bodytext,
        --palette--;;garvino_linklabeliconconfig,
        --div--;core.form.tabs:appearance,
        --palette--;;frames
        ',
    [
        'columnsOverrides' => [
            'bodytext' => [
                'config' => [
                    'enableRichtext' => true,
                ],
            ],
        ],
    ],
);
