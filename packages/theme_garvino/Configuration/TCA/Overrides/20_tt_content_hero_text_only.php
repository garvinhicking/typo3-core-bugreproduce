<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addRecordType(
    [
        'label' => 'theme_garvino.backend_fields:tt_content.CType.garvino_hero_text_only.label',
        'description' => 'theme_garvino.backend_fields:tt_content.CType.garvino_hero_text_only.description',
        'value' => 'garvino_hero_text_only',
        'icon' => 'content-header',
        'group' => 'garvino_hero',
    ],
    '
        --palette--;;headers,
        --palette--;;garvino_linklabeliconconfig,
    ',
);
