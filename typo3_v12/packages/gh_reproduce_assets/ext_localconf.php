<?php
defined('TYPO3') || die('Access denied.');

call_user_func(
    function()
    {
        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'gh_reproduce_assets',
            'CoreBugReproduceAssets',
            [
                \GarvinHicking\CoreBugReproduceAssets\Controller\DummyController::class => 'list'
            ],
            // non-cacheable actions
            [
                \GarvinHicking\CoreBugReproduceAssets\Controller\DummyController::class => 'list'
            ]
        );
    }
);
