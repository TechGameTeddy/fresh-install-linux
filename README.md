# FRESH INSTALL LINUX SCRIPT

A menu driven script to backup and restore files from an Ubuntu desktop
 add to your github account for personal use
 inspired by OMG Ubuntu's infamous
 Top Things to do after Installing Ubuntu xx.xx articles
 check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04

## Origin ##
 I have been using Ubuntu since 10.04 and have noticed that when a new release is available
 there are lists of different blogs and site that tell you the easiest way to upgrade is to
 run the following commands

 * $ sudo apt update
 * $ sudo apt upgrade
 * $ sudo apt dist-upgrade

 And everytime, without fail I would backup my data and try the dist-upgrade and fail.
 Unity would crash or Gnome wouldnt know what to do with new or updated gcc packages
 preventing me from logging in.

 I bought a new laptop and wanted the same packages installed on my desktop to replicate on my
 laptop. This script was then born with the simple task of savings all installed packages to a
 text file, my curiousity, and trigger fingers.

 Enjoy!

## Features ##
 * Backup Currently installed packages
 * Backup Snap Packages
 * Backup Alias Shortcuts for user running the script
 * Install [Snapd](https://github.com/snapcore/snapd)
 * Install [Neofetch](https://github.com/dylanaraps/neofetch)
 * Restore Backed up snaps and packages from broken machine or new pc


## Screenshots ##

Main Menu

![screenshot](https://github.com/tmeralus/fresh-install-linux/blob/master/img/main-menu.png)

Backup Utility

![screenshot](https://github.com/tmeralus/fresh-install-linux/blob/master/img/backup-utility.png)
