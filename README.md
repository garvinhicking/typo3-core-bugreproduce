# Dummy TYPO3 installation using TYPO3.git and composer

See the README.md of the "main" branch to see what's this about.

This README only covers the specific issue:

## 94616

Multilingual import/export of pages through the TYPO3 impexp extension
does not work since the split of "pages" and "pages_language_overlay".

This patch tries to address it:

https://review.typo3.org/c/Packages/TYPO3.CMS/+/71374

This repository here is to provide an easy playground based on 
TYPO3v13 (main, actually).

The patch is applied via composer-patches already.

After checkout out the repository perform these steps:

* ddev start
* ddev composer install
* ddev import-db --file=db.sql
* ddev launch (opens https://typo3-impexp-94616.ddev.site/)
* You can log into the backend with "admin:TYPO3-core-bugreproduce"

Then you can to try export/importing the pages.

