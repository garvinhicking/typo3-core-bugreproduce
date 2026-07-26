<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Resource\FileType;
use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die();

ExtensionManagementUtility::addTCAcolumns('sys_file_reference', [
    'portfoliobg' => [
        'label' => 'Field Label',
        'config' => [
            'type' => 'color',
        ],
    ],
]);

$GLOBALS['TCA']['tt_content']['types']['camino_hero']['columnsOverrides']['image']['showitem'] = 'portfoliobg';

$imageTypeConfig = $GLOBALS['TCA']['sys_file_reference']['types'];
$imageTypeConfig[FileType::IMAGE->value]['showitem'] .= ', portfoliobg';

$GLOBALS['TCA']['tt_content']['types']['camino_hero']['columnsOverrides']['image']['config']['overrideChildTca']['types'] = $imageTypeConfig;
