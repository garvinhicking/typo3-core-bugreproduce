# Dummy TYPO3 installation using TYPO3.git and composer

## What?!

If you check out the TYPO3 git to work on it, you have a non-composer
installation. That's "good enough" for testing and building things.

However, a final TYPO3 installation is usually performed in composer.
If you face bugs in that specific environment (possibly when using
a composer installation inside a subdirectory of your DocumentRoot),
you cannot easily work with the TYPO3 core git to fix those things,
without manually patching around things between "your working git directory"
and "your working composer installation of a TYPO3 instance".

This is where the project
[ochorocho/tdk](https://github.com/ochorocho/tdk/tree/main) comes into play.

This allows you to create a normal composer project, but fetch the TYPO3
core from a GIT working directory. It also uses ddev as an environment.

Thus, you can share created projects based on this for easy reproducability
with other people.

They (you!) need to:

* Check out the created project (like this one you're looking at)
* Initialize the ddev installation: `ddev start`
* Set-up the TYPO3 monorepo: `composer tdk:setup`
* Use `ddev launch` and log-in to TYPO3
    * Username: admin
    * Password: TYPO3-core-bugreproduce

## Got it. How do actually reproduce a bug now?

These are TDK-specific steps. Now for reproducing a specific problem.

This repository ships with different templates being able to reproduce
specific problems.

Each issue has its own GIT branch, because several things may differ.
So you can switch to different branches that reproduce different issues.

*TODO*: (This concept may (should?) change, I have some headaches about rebasing other changes
to a plethora of branches)

The different branches use the same ddev project name, so make sure to
restart ddev whenever you switch branches (that shouldn't happen a lot).
It is recommended to stop the current ddev project before you switch the branch.

## Are You Sure?

No. This is a "proof of concept" / "work in progress". Feel free to
contribute to either this repository or (better) to the source
`ochorocho/tdk`.

