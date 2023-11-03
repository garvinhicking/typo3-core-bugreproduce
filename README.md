# Dummy TYPO3 installation using TYPO3.git and composer

See the README.md of the "main" branch to see what's this about.

TL;DR: Execute the commands at the bottom of this README.

This README only covers the specific issue:

## 94616

Multilingual import/export of pages through the TYPO3 impexp extension
does not work since the split of "pages" and "pages_language_overlay".

This patch tries to address it:

https://review.typo3.org/c/Packages/TYPO3.CMS/+/71374

This repository here is to provide an easy playground based on 
TYPO3v13 (main, actually).

The patch is applied via composer-patches already and delivered within
this repository:

```
ddev composer typo3:patch:apply 71374
```

To update to the latest version of said patch, you can re-run this
command (maybe need to remove the `vendor` directory first to force
re-loading and patching all sources).

You probably already did this:

```
git clone --branch issue_94616 git@github.com:garvinhicking/typo3-core-bugreproduce.git
cd typo3-core-bugreproduce
```

After checkout out of the repository perform these steps:

* `ddev start`
* `ddev composer tdk:install`
* `ddev composer install`
* `ddev "cd typo3-core && composer install"`
* `ddev import-db --file=db.sql`
* `ddev launch` (opens https://typo3-impexp-94616.ddev.site/)
* You can log into the backend with `admin:TYPO3-core-bugreproduce`

Now you can to try export/importing the pages.

