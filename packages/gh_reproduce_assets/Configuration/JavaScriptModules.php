<?php
return [
    'dependencies' => ['backend'],
    'tags' => [
        'backend.form',
    ],
    'imports' => [
        '@myself/ckeditorplugin/timestamp-plugin.js' => 'EXT:gh_reproduce_assets/Resources/Public/JavaScript/timestamp-plugin.js',
    ],
];
