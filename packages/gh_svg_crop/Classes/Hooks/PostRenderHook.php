<?php
namespace GarvinHicking\SvgCrop\Hooks;

class PostRenderHook
{
    public function postProcessKillBackendCSS(&$params, $object) {
        if (isset($GLOBALS['MY_EXTENSION']['removeBackendCss'])) {

            $params['cssFiles'] =
                preg_replace(
                    '@<link rel="stylesheet" href="[^"]+backend.css[^>]+>@imsU',
                    '<!-- removed TYPO3 Backend via popular demand -->',
                    $params['cssFiles']
                );

            // You could do other hacks here as well, i.e. operate on $params['bodyContent']
        }
    }
}

