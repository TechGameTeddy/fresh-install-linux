#!/bin/bash 
# Name: Fresh Install
# Author: Tedley Meralus 
# contact: @TechGameTeddy
# This script is a list of popular tools and utilities 
# to install inspired by OMG Ubuntu's infamous 
# Top Things to do after Installing Ubuntu xx.xx articles
# check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04
#

# Variables 
STARTOFSCRIPT='date'
ALLPPA="AllPPA"

INSTALL="sudo apt-get install"
ADDPPA="sudo add-apt-repository"
SEARCH="apt-cache search"

# Variables to install all available ppa's 
nvidia="ppa:graphics-drivers/ppa" 
neoppa="ppa:dawidd0811/neofetch"
sviewppa="ppa:vlijm/spaceview"
gerardpuig="ppa:gerardpuig/ppa"
shutppa="ppa:shutter/ppa"
atareaoppa="ppa:atareao/atareao"
subppa="ppa:webupd8team/sublime-text-3"

#Variables for apps being installed
adb="android-tools-adb android-tools-fastboot" 
natgeo="national-geographic-wallpaper"
tweak="unity-tweak-tool"
chrome="google-chrome-stable"
spaceview="spaceview"
putty="putty"
virtualbox="open-vm-tools-desktop"
mail="evolution"
ftp="filezilla"
gimp="gimp gimp-gmic"
git="git"
guigit="gitg"
libxss1="libxss1"
libappindicator1="libappindicator1"
libindicator7="libindicator7"
neofetch="neofetch"
screenshot="shutter"
spaceview="spaceview"
steam="steam"
sublime="sublime-text-installer"
synaptic="synaptic"
deebweb="tor"
torrent="transmission"
dlmanager="uget"
systemcleaner="ubuntu-cleaner"



# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
# Option one()
one(){
	echo "one() called"
        pause
}
 
# Option two()
two(){
	echo "two() called"
        pause
}

 # Option three()
three(){
	echo "three() called"
        pause
}
 
# Option four()
four(){
	echo "four() called"
        pause
}
# Option five()
five(){
	exit
        pause
}

# function to display menus
show_menus() {
	clear
	echo   "|~~~~~~~~~~~~~~~~~~~~~---------------------------------------------|"
	echo   "|~~~~~~~~~~~~~~~~~~~~~---------------------------------------------|"
	echo   "|                                                                  |" 
	echo   "| ######## ########  ########  ######  ##     ##                   |"
	echo   "| ##       ##     ## ##       ##    ## ##     ##                   |"
	echo   "| ##       ##     ## ##       ##       ##     ##                   |"
	echo   "| ######   ########  ######    ######  #########                   |"
	echo   "| ##       ##   ##   ##             ## ##     ##                   |"
	echo   "| ##       ##    ##  ##       ##    ## ##     ##                   |"
	echo   "| ##       ##     ## ########  ######  ##     ##                   |"
	echo   "|#### ##    ##  ######  ########    ###    ##       ##             |"   
 	echo   "| ##  ###   ## ##    ##    ##      ## ##   ##       ##             |"   
 	echo   "| ##  ####  ## ##          ##     ##   ##  ##       ##             |"   
 	echo   "| ##  ## ## ##  ######     ##    ##     ## ##       ##             |"   
 	echo   "| ##  ##  ####       ##    ##    ######### ##       ##             |"   
 	echo   "| ##  ##   ### ##    ##    ##    ##     ## ##       ##             |"   
	echo   "|#### ##    ##  ######     ##    ##     ## ######## ########       |"
	echo   "|                                                                  |"
	echo   "| 17 tools/utilities to install after installing Ubuntu 17.10      |"
	echo   "| created By @TechGameTeddy                                        |"
	echo   "|                                                                  |"
	echo   "| ~~~~~~~~~~~~~~~~~~~~~--------------------------------------------|"
	echo   "| ~~~~~~~~~~~~~~~~~~~~~--------------------------------------------|"
	echo   "|1. Run unattended installer                                       |"
	echo   "|2. update all PPA's                                               |"
	echo   "|3. Check Software List                                            |"
	echo   "|4. Contribute                                                     |"
	echo   "|5. Exit                                                           |" 
	echo   "|                                                                  |"
	echo   "| ~~~~~~~~~~~~~~~~~~~~~--------------------------------------------|"
}
# read input from the keyboard and take a action
# invoke the numbers() when the user select an option from the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 5] " choice
	case $choice in
		1) one   ;;
		2) two   ;;
		3) three ;;
		4) four  ;;
		5) five  ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# Trap CTRL+C, CTRL+Z and quit singles
trap '' SIGINT SIGQUIT SIGTSTP
 
# Main Menu logic - infinite loop
while true
do
 
	show_menus
	read_options
done








