<?php
defined('TYPO3') || die('Access denied.');

call_user_func(
    function()
    {
        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
            'gh_reproduce_assets',
            'CoreBugReproduceAssets',
            'GH Core-Bug-Reproduce: Assets'
        );
    }
);
