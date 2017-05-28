#!/bin/bash 
# Name: Fresh Install
# Author: Tedley Meralus 
# contact: @TechGameTeddy
# This script is a list of popular tools and utilities 
# to install inspired by OMG Ubuntu's infamous 
# Top Things to do after Installing Ubuntu xx.xx articles
# check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04
#

<<<<<<< HEAD
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
=======


# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " 17 Things to Install After installing Ubuntu 17.10"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. List all software/utilities"
	echo "2. Install all software/utilities"
	echo "3. Contributers"
	echo "4. Exit"
}

show_menus_list() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " 17 Things to Install After installing Ubuntu 17.10"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Exit"
	echo "2. Exit"
	echo "3. Exit"
	echo "4. Exit"
	echo "5. Exit"
	echo "6. Exit"
	echo "7. Exit"
	echo "8. Exit"
	echo "9. Exit"
	echo "10. Exit"
	echo "11. Exit"
	echo "12. Exit"
	echo "13. Exit"
	echo "14. Exit"
	echo "15. Exit"
	echo "16. Exit"
	echo "17. Exit"
}

show_menus_cont() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " Send all contribution request via Twitter to @TechGameTeddy"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "All Contributions are greatly appreciated and listed on Github"
	echo "Tedley Meralus @TechGameTeddy"
	echo "4. Exit"
}

#sudo add-apt-repository ppa:graphics-drivers/ppa 
#sudo apt-get install libxss1 libappindicator1 libindicator7
#sudo add-apt-repository ppa:dawidd0811/neofetch
#sudo add-apt-repository ppa:vlijm/spaceview
#sudo add-apt-repository ppa:gerardpuig/ppa
#sudo add-apt-repository ppa:shutter/ppa
#sudo add-apt-repository ppa:atareao/atareao
#sudo apt-get install shutter
#sudo apt install national-geographic-wallpaper
#sudo apt-get install git
#sudo apt-get install gitg
#sudo apt-get install synaptic
#sudo apt-get install unity-tweak-tool
#sudo apt install google-chrome-stable
#sudo apt-get install steam
#sudo apt-get install transmission
#sudo apt install gimp gimp-gmic
#sudo apt-get install spaceview
#sudo apt-get install ubuntu-cleaner
#sudo apt-get install filezilla
#sudo apt-get install uget
#sudo apt-get install tor
#sudo apt-get install putty
#sudo apt-get install open-vm-tools-desktop
#sudo apt install android-tools-adb android-tools-fastboot

#git clone https://github.com/ebruck/indicator-doom-cpu/releases/download/v1.0/indicator-doom-cpu-1.0.0-noarch.deb

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb

#sudo apt-get install libxss1 libappindicator1 libindicator7
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb


##synaptic package manager 
#sudo apt-get install synaptic

##Nvidia drivers
#sudo add-apt-repository ppa:graphics-drivers/ppa 

##Unity tweak tool 
#sudo apt-get install unity-tweak-tool

##Install chrome
#sudo apt install google-chrome-stable

##Install steam 
#sudo apt-get install steam


##Transmission
#sudo apt-get install transmission


##Neo fetch(system info via terminal)
#sudo add-apt-repository ppa:dawidd0811/neofetch
#sudo apt-get install neofetch

#Install Gimp
#sudo apt install gimp gimp-gmic


##Evolution
#sudo apt-get install evolution

>>>>>>> 27c9db9aafe411acc67513251bf3bb4a382e409a
 
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



<<<<<<< HEAD
=======
##Install Sublime
#sudo add-apt-repository ppa:webupd8team/sublime-text-3


##install Sublime
#sudo apt-get install sublime-text-installer



##Install Cinnamon
# this one fails
## email the developer and tell them 
##sudo add-apt-repository ppa:moorkai/cinnamon 
#sudo add-apt-repository ppa:embrosyn/cinnamon
#sudo apt-get install cinnamon

##Nvidia Graphics
#sudo add-apt-repository ppa:graphics-drivers/ppa
#apt-cache search nvidia

##Install SpaceView Indicator
#sudo add-apt-repository ppa:vlijm/spaceview
#sudo apt-get update && sudo apt-get install spaceview

##Install Ubuntu Cleaner
#sudo add-apt-repository ppa:gerardpuig/ppa
#sudo apt-get update && sudo apt-get install ubuntu-cleaner

#sudo add-apt-repository ppa:shutter/ppa
#sudo apt-get update
#sudo apt-get install shutter

#National Geographic Wallpaper switcher
#sudo add-apt-repository ppa:atareao/atareao
#sudo apt update && sudo apt install national-geographic-wallpaper



#apt-cache search nvidia


>>>>>>> 27c9db9aafe411acc67513251bf3bb4a382e409a





