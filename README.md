nmail homebrew tap
==================

This repository contains the [nmail](https://github.com/d99kris/nmail) formula
for Homebrew.


Installation
------------

**Dependencies**
Ensure XCode command line developer tools is installed:

    xcode-select --install

**Brew Install**

    brew tap d99kris/nmail
    brew install nmail


Updating Formula
----------------

The repository includes a script which will check latest Github release version
and update the formula accordingly.

    ./make.sh


Testing Formula Locally
-----------------------

Test run the formula locally with the following command.

    brew install -vd ./Formula/nmail.rb

