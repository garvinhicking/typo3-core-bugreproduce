<?php
defined('TYPO3') || die('Access denied.');

call_user_func(
    function()
    {
        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'gh_svg_crop',
            'SvgCropDemo',
            [
                \GarvinHicking\SvgCrop\Controller\DummyController::class => 'list'
            ],
            // non-cacheable actions
            [
                \GarvinHicking\SvgCrop\Controller\DummyController::class => 'list'
            ]
        );

        $GLOBALS['TYPO3_CONF_VARS']['SC_OPTIONS']['t3lib/class.t3lib_pagerenderer.php']['render-postProcess'][] =
            \GarvinHicking\SvgCrop\Hooks\PostRenderHook::class . '->postProcessKillBackendCSS';
    }
);
