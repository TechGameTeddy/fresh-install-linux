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
# learn more menu option
# ----------------------------------
learnmore(){
	echo "learn more" 
}
# ----------------------------------
#  Unattended installer function
# ----------------------------------
uinstaller(){
	echo "Installer started"
        pause
}
# ----------------------------------
#  Software List Menu functions and Variables
# ----------------------------------
## option 1()
SL_one(){
	echo "number() called"
        pause
}
## option 2 ()
SL_two(){
	echo "number() called"
        pause
}
## Option 3()
SL_three(){
	echo "number() called"
        pause
}
## Option 4()
SL_four(){
	echo "number() called"
        pause
}
## Option 5 ()
SL_five(){
	echo "number() called"
        pause
}
## Option 6 ()
SL_six(){
	echo "number() called"
        pause
}
## option 7 ()
SL_seven(){
	echo "number() called"
        pause
}
## Option 8()
SL_eight(){
	echo "number() called"
        pause
}
## Option 9()
SL_nine(){
	echo "number() called"
        pause
}
## Option 10 ()
SL_ten(){
	echo "number() called"
        pause
}
## Option 11 ()
SL_eleven(){
	echo "number() called"
        pause
}
## option 12 ()
SL_twelve(){
	echo "number() called"
        pause
}
## Option 13()
SL_thirteen(){
	echo "number() called"
        pause
}
## Option 14()
SL_fourteen(){
	echo "number() called"
        pause
}
## Option 15 ()
SL_fifteen(){
	echo "number() called"
        pause
}
## Option 16 ()
SL_sixteen(){
	echo "number() called"
        pause
}
## option 17 ()
SL_seventeen(){
	echo "number() called"
        pause
}
## Option 18()
SL_eighteen(){
	echo "number() called"
        pause
}
## Option 19()
SL_nineteen(){
	echo "number() called"
        pause
}
## Option 20 ()
SL_twenty(){
	echo "number() called"
        pause
}
# ----------------------------------
#  Return function
# ----------------------------------
#pause
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
# Press M to return
M_button(){
	while true; do
    read mM
case $input in
    [mM])
		show_menus
#back to main menu
backtomain(){
  show_menus
}

# function to display menus
show_menus() {
	clear
	echo   "|------------------------------------------------------------------|"
	echo   "|------------------------------------------------------------------|"
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
	echo   "| Essential tools/utilities to install after installing            |"
	echo   "| the latest version of Ubuntu                                     |"
	echo   "| created By @TechGameTeddy                                        |"
	echo   "|                                                                  |"
	echo   "|------------------------------------------------------------------|"
	echo   "|------------------------------------------------------------------|"
	echo   "|1. Run unattended installer                                       |"
	echo   "|2. Install Dependancies                                           |"
	echo   "|3. Check Software List                                            |"
	echo   "|4. Contribute                                                     |"
	echo   "|5. Exit                                                           |" 
	echo   "|                                                                  |"
	echo   "| ~~~~~~~~~~~~~~~~~~~~~--------------------------------------------|"

}
software_list() {
	write_header " Package List "

	clear
	echo "-----------------------------------------------------|"	
	echo " Essential Tools to install post installing Ubuntu   |" 
	echo "-----------------------------------------------------|"
	echo "                                                     |"
	echo "1. Android Device Manager                            |" 
	echo "2. Chromium                                          |"
	echo "3. Evolution                                         |"
	echo "4. Filezilla                                         |"
	echo "5. Gimp                                              |"
	echo "6. Git                                               |"
	echo "7. Inkscape                                          |"
	echo "8. National-geographic-wallpaper                     |"
	echo "9. Neofetch                                          |"
	echo "10.Putty                                             |"
	echo "11.Shutter                                           |"
	echo "12.Spaceview                                         |"
	echo "13.Steam                                             |"
	echo "14.Synaptic Package Manager                          |"
	echo "15.Tor                                               |"
	echo "16.Transmission                                      |"
	echo "17.Ubuntu System Cleaner                             |"
	echo "18.Unity Tweak Tool                                  |"
	echo "19.Visual Studio Code                                |"
	echo "20.Virtual Box                                       |"
	echo "                                                     |"
	echo "      type learn# to learn more about each item      |"  
	echo "       or press M to go back to the main menu        |"
	echo "-----------------------------------------------------|"

}
contributors() {
	write_header " Contributors "
	clear
	echo "|------------------------------------------------------------------|"
	echo "|      ~~|~~|  |  /\  |\  || /  \   //~~\ |   |                    |"
	echo "|        |  |--| /__\ | \ ||(    \ /|    ||   |                    |"
	echo "|        |  |  |/    \|  \|| \    |  \__/  \_/                     |"
	echo "|                                                                  |"	
	echo "|                                                                  |"
	echo "|  All Contributions are greatly appreciated and listed here       |" 
	echo "|                                                                  |"
	echo "|  1.Tedley Meralus @TechGameTeddy                                 |"
	echo "|  2.Could be you                                                  |"
	echo "|  3.Someone else not as great as you                              |"
	echo "|                                                                  |"
	echo "|  Send all contribution request via Twitter to @TechGameTeddy     |"
	echo "|------------------------------------------------------------------|"
	pause
}
# ----------------------------------
#  Main Menu Option
# ----------------------------------

## Option one Unattended installer ()
one(){
	while true; do
    read -p "Are you sure you want to run the unattended installer?" input
case $input in
    [yY][eE][sS]|[yY])
		uinstaller
		;;
 
    [nN][oO]|[nN])
		backtomain
		break
       		;;
    *)
	echo "Invalid input..."
	echo "Please type (y)Yes or (n)No" 
	;;
esac
done
        pause
}
## Option two Update PPA List ()
two(){
	echo "two() called"
        pause
}

## Option three Check Software List()
three(){
	software_list
        pause
}
 
## Option four Contributors()
four(){
	contributors

}
## Option five Exit ()
five(){
	exit
        pause
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

