<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Resource\FileType;

defined('TYPO3') or die();

/**
 * use custom field configuration for images/media fields where appropriate.
 * We never want to show a link field for example if linking an image does not make sense (e.g. separately linking an
 * image that is part of a fully linked teaser).
 */
$GLOBALS['TCA']['sys_file_reference']['palettes']['garvinoImagePalette'] = [
    'showitem' => 'alternative,title,--linebreak--,crop',
    'label' => 'core.tca:sys_file_reference.imageoverlayPalette',
];

$defaultImageTypeConfig = $GLOBALS['TCA']['sys_file_reference']['types'];
$defaultImageTypeConfig[FileType::IMAGE->value]['showitem'] = '
    --palette--;;garvinoImagePalette,
    --palette--;;filePalette
';

$GLOBALS['TCA']['tt_content']['types']['garvino_author']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['tt_content']['types']['garvino_hero']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['tt_content']['types']['garvino_hero_small']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['tt_content']['types']['garvino_testimonial']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['tt_content']['types']['garvino_textmedia_teaser']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['tx_themegarvino_list_item']['columns']['images']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;
$GLOBALS['TCA']['pages']['columns']['tx_themegarvino_logo']['config']['overrideChildTca']['types'] = $defaultImageTypeConfig;

unset($defaultImageTypeConfig);
