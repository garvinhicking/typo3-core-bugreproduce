# Issue 101911

[https://forge.typo3.org/issues/101911](https://forge.typo3.org/issues/101911)

This branch represents an issue about having a composer installation within
a subdirectory.

To reproduce:

## Base installation

* Check out the repository with this branch (you're halfway there, if you read this)
* Run: `ddev start`
* Run: `ddev exec 'cd typo3_v12 && composer install && composer tdk:setup'`
    * IMPORTANT: Answer "n" when TDK asks for creating a ddev config. This
      repository already provides it.
* Run: `ddev import-db --file=typo3_v12/db.sql`
* Open in browser: `https://typo3-core-reproducebug.ddev.site/typo3_v12/public/typo3/index.php`
    * Username: admin
    * Password: TYPO3-core-bugreproduce

## Bug reproduction(s)

### RTE contentCss resolve

* Open the "TYPO3 Dummy domain" in "Web > Page" view
* Edit the existing tt_content entry on that page
* See the error message about non-matching asset
* Reason: `EXT:bootstrap_package/Configuration/RTE/Form.yaml` makes use of `contentCss` option where asset paths are miscalculated.

Actual error message:

```
PHP Warning: sha1_file(/var/www/html/typo3_v12/public/typo3_v12/public/_assets/9b80d86a98af3ecc38aabe297d2c3695/Css/bootstrap5-rte.min.css): Failed to open stream: No such file or directory in /var/www/html/typo3_v12/typo3-core/typo3/sysext/rte_ckeditor/Classes/Form/Element/RichTextElement.php line 135
```
