# Issue 101911

[https://forge.typo3.org/issues/101911](https://forge.typo3.org/issues/101911)

This branch represents an issue about having a composer installation within
a subdirectory.

To reproduce:

## Base installation

* Check out the repository with this branch (you're halfway there, if you read this)
* Run: `ddev start`
* Run: `ddev exec 'cd typo3_v12 && composer install && composer tdk:setup'` (this also copies `htaccess-template` to `public/.htaccess`)
* Run: `ddev import-db --file=typo3_v12/db.sql`
* Open in browser: `https://typo3-core-reproducebug.ddev.site/typo3_v12/public/typo3/index.php`
    * Username: admin
    * Password: TYPO3-core-bugreproduce

## Bug reproduction(s)

### A: RTE contentCss resolve

* Open the "TYPO3 Dummy domain" in "Web > Page" view
* Edit the existing tt_content entry on that page
* See the error message about non-matching asset
* Reason: `EXT:bootstrap_package/Configuration/RTE/Form.yaml` makes use of `contentCss` option where asset paths are miscalculated.

Actual error message:

```
PHP Warning: sha1_file(/var/www/html/typo3_v12/public/typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Css/bootstrap5-rte.min.css): Failed to open stream: No such file or directory in /var/www/html/typo3_v12/typo3-core/typo3/sysext/rte_ckeditor/Classes/Form/Element/RichTextElement.php line 135
```

### B: Frontend

* Open the frontend URL
* Bootstraps logo embed raises this error:
* Reason: FAL resolves a file with a /typo3_v12/public/ prefix, which gets doubled through the absolutePath resolve later on.

```
(1/1) #1314516809 InvalidArgumentException
File /typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg does not exist.
in /var/www/html/typo3_v12/typo3-core/typo3/sysext/core/Classes/Resource/Driver/LocalDriver.php line 262
```

### C: Plugin

* Open the subpage: https://typo3-core-bugreproduce.ddev.site/typo3_v12/public/plugin-issue-imageuri
* (Note: To circumvent Bug B, this subpage has the bootstrap `logo.file` and `logo.fileInverted` TypoScript consent set to blank!
* Reason: ImageViewHelper uses FAL to resolve the same scenario as above

```
(1/2) #1509741910 TYPO3Fluid\Fluid\Core\ViewHelper\Exception
File /typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg does not exist.

in /var/www/html/typo3_v12/typo3-core/typo3/sysext/fluid/Classes/ViewHelpers/Uri/ImageViewHelper.php line 167
```

## Thoughts

Issue B and C seem to be connected. Both use `/typo3/sysext/core/Classes/Resource/Driver/LocalDriver.php` to resolve an absolute path.

An input `$fileIndentifier` gets resolved like `/typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg`.

That resolved file is preended in `function getAbsolutePath()` with the driver configuration `$this->absolutePath` (=`/var/www/html/typo3_v12/public`).

That means, the returned file is:

```
return '/var/www/html/typo3_v12/public/' . '/typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg';
```

The expected return would need to either strip trailing `typo3_v12/public/` from `$this->abdsolutePath` *OR* strip leading `typo3_v12/public` from the $fileIdentifier.

Since the `absolutePath` is reused in many instances, and setting that to the actual place where TYPO3 has its `index.php` that should be proper.

That means, the `$fileIdentifier` itself would need to be fixed.

This is calculated within `/typo3/sysext/core/Classes/Resource/ResourceFactory.php`, method `retrieveFileOrFolderObject`:

```
$relativePath = PathUtility::getPublicResourceWebPath($input);
```

The second parameter of `getPublicResourceWebPath` is `$prefixWithSitePath`, which is per definition set as `true` by default, and the current implementation reads as if in the future that method is no longer meant to receive an optional boolean input anymore.

Utilizing this though is a solution for all 3 issues reported above, setting it to `false` returns things properly in those three instances.

A possible fix that could implemented in [https://review.typo3.org/c/Packages/TYPO3.CMS/+/81014](https://review.typo3.org/c/Packages/TYPO3.CMS/+/81014) short-circuits this parameter by detecting the composer-mode subdirectory install:

```
diff --git a/typo3/sysext/core/Classes/Utility/PathUtility.php b/typo3/sysext/core/Classes/Utility/PathUtility.php
index 31a01cfb41..030d8c55b4 100644
--- a/typo3/sysext/core/Classes/Utility/PathUtility.php
+++ b/typo3/sysext/core/Classes/Utility/PathUtility.php
@@ -108,7 +108,13 @@ class PathUtility
             trigger_error(sprintf('Public resource "%s" is not in extension\'s Resources/Public folder. This is deprecated and will not be supported any more in future TYPO3 versions.', $resourcePath), E_USER_DEPRECATED);
         }

-        return self::getAbsoluteWebPath($absoluteFilePath, $prefixWithSitePath);
+        // Getting a public resource on composer-mode installations operating in a subdirectory shall NOT prefix
+        // their site path, because it would duplicate portions of the resolved file.
+        if (Environment::isComposerMode() && GeneralUtility::getIndpEnv('TYPO3_SITE_PATH') !== '/') {
+            return self::getAbsoluteWebPath($absoluteFilePath, false);
+        } else {
+            return self::getAbsoluteWebPath($absoluteFilePath, $prefixWithSitePath);
+        }
     }

     /**
```

This fixes all three issues mentioned above. HOWEVER it introduces a bug where the adminpanel inside the frontend does not use proper asset URLs. It emits:

```
<link nonce="3FdytXIOnyvtx0eBTSMqNLu79lWQTxwldUpfGthN5ZxmvIsqAW0poQ" rel="stylesheet" media="all" href="/_assets/0304760f2d5b5a1f133ce43f8d460a02/Css/adminpanel.css" />
<script nonce="3FdytXIOnyvtx0eBTSMqNLu79lWQTxwldUpfGthN5ZxmvIsqAW0poQ" src="/_assets/0304760f2d5b5a1f133ce43f8d460a02/JavaScript/admin-panel.js"></script>
```

and it should be `/typo3_v12/public/_assets/` instead.

The same happens in the backend; it actually totally breaks the backend, because all asset references there are now mapped to just `/_assets`

So it needs to be unified in the core that all calls to `getPublicResourceWebPath` make use of a call to prefix the

(Todo, too: Investigate more core uses of `getPublicResourceWebPath`).
