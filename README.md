# Dummy TYPO3 installation using TYPO3.git and composer

See the README.md of the "main" branch to see what's this about.

TL;DR: Execute the commands at the bottom of this README.

This README only covers the specific issue:

## 80617

SVG image cropping isn't supported yet.

This patch tries to address it:

https://review.typo3.org/c/Packages/TYPO3.CMS/+/80617

This repository here is to provide an easy playground based on 
TYPO3v13 (main, actually).

You probably already did this:

```
git clone --branch issue_80617 git@github.com:garvinhicking/typo3-core-bugreproduce.git
cd typo3-core-bugreproduce
```

After checkout out of the repository perform these steps:

* `ddev start`
* `ddev composer tdk:install`
* `ddev composer install`
* `ddev exec "cd typo3-core && composer install"`
* `ddev import-db --file=db.sql`
* `ddev launch` (opens https://typo3-impexp-80617.ddev.site/)
* You can log into the backend with `admin:TYPO3-core-bugreproduce`

You can copy the `assets/` directory to `public/fileadmin/` and then import
them to the TYPO3 filelist (via indexing or opening the filelist)

*IMPORTANT*

Remember when you do changes, CLEAR YOUR PROCESSED FILES.
