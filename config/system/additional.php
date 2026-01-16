<?php

if (getenv('IS_DDEV_PROJECT') == 'true') {
    $GLOBALS['TYPO3_CONF_VARS'] = array_replace_recursive(
        $GLOBALS['TYPO3_CONF_VARS'],
        [
            'DB' => [
                'Connections' => [
                    'Default' => [
                        'charset' => 'utf8mb4',
                        'collation' => 'utf8mb4_unicode_ci',
                        'dbname' => 'db',
                        'driver' => 'mysqli',
                        'host' => 'db',
                        'password' => 'db',
                        'port' => '3306',
                        'defaultTableOptions' => [
                            'collation' => 'utf8mb4_unicode_ci',
                            'charset' => 'utf8mb4',
                        ],
                        'user' => 'db',
                    ],
                ],
            ],
            // This GFX configuration allows processing by installed ImageMagick 6
            'GFX' => [
                'processor' => 'ImageMagick',
                'processor_path' => '/usr/bin/',
                'processor_path_lzw' => '/usr/bin/',
            ],
            // This mail configuration sends all emails to mailhog
            'MAIL' => [
                'transport' => 'smtp',
                'transport_smtp_encrypt' => false,
                #'transport_spool_type' => 'memory',
                'defaultMailFromAddress' => 'nobody@example.com',
                'transport_smtp_server' => 'localhost:1025',
            ],
            'SYS' => [
                'trustedHostsPattern' => '.*.*',
                'devIPmask' => '*',
                'displayErrors' => 1,
            ],
        ]
    );
}

/*
if (isset($GLOBALS['TYPO3_CONF_VARS']['BE']['fileDenyPattern'])) {
    $GLOBALS['TYPO3_CONF_VARS']['BE']['fileDenyPattern'] .= '|\.zip$';
    $GLOBALS['TYPO3_CONF_VARS']['BE']['fileDenyPattern'] .= '|\.xls$';
    $GLOBALS['TYPO3_CONF_VARS']['BE']['fileDenyPattern'] .= '|\.jpg$';
}
*/

#$GLOBALS['TYPO3_CONF_VARS']['SYS']['FileInfo']['mimeTypeCompatibility']['text/vcard']['vcf'] = 'text/x-vcard';

$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor'] = 'GraphicsMagick';
##$GLOBALS['TYPO3_CONF_VARS']['SYS']['textfile_ext'] = 'txt';
#$GLOBALS['TYPO3_CONF_VARS']['SYS']['mediafile_ext'] = 'jpg,pdf,ico,jpeg';
#$GLOBALS['TYPO3_CONF_VARS']['SYS']['miscfile_ext'] = 'zip';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['features']['security.system.enforceAllowedFileExtensions'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['features']['security.system.enforceFileExtensionMimeTypeConsistency'] = true;
#$GLOBALS['TYPO3_CONF_VARS']['SYS']['cookieDomain'] = '/(ddev.site|ddev.localhost)$/';

/*
$GLOBALS['TYPO3_CONF_VARS']['SYS']['fal']['processors']['watermarkService'] = [
    'className' => \TYPO3\CMS\Core\Resource\OnlineMedia\Processing\WatermarkProcessing::class,
    'after' => ['LocalImageProcessor']
];
*/
