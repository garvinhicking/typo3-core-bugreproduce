<?php

declare(strict_types=1);

defined('TYPO3') or die();

$garvinoIconList =  [
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.none',
        'value' => '',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.arrow-left',
        'value' => 'arrow-left',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.arrow-right',
        'value' => 'arrow-right',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.chevron',
        'value' => 'chevron',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.chevron-double-left',
        'value' => 'chevron-double-left',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.chevron-double-right',
        'value' => 'chevron-double-right',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.chevron-left',
        'value' => 'chevron-left',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.chevron-right',
        'value' => 'chevron-right',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.close',
        'value' => 'close',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.download',
        'value' => 'download',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.globe',
        'value' => 'globe',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.launch',
        'value' => 'launch',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.mail',
        'value' => 'mail',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.menu',
        'value' => 'menu',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.phone',
        'value' => 'phone',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.play',
        'value' => 'play',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.search',
        'value' => 'search',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-facebook',
        'value' => 'social-facebook',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-instagram',
        'value' => 'social-instagram',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-linkedin',
        'value' => 'social-linkedin',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-x',
        'value' => 'social-x',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-xing',
        'value' => 'social-xing',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.social-youtube',
        'value' => 'social-youtube',
    ],
    [
        'label' => 'theme_garvino.backend_fields:tx_garvino.icon.zoom',
        'value' => 'zoom',
    ],
];

$GLOBALS['TCA']['tx_themegarvino_list_item']['columns']['link_icon']['config']['items'] = $garvinoIconList;
$GLOBALS['TCA']['tt_content']['columns']['tx_themegarvino_link_icon']['config']['items'] = $garvinoIconList;

unset($garvinoIconList);
