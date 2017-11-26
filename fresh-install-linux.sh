https://github.com/TechGameTeddy/fresh-install-linux.git#!/bin/bash 
# Name: Fresh Install
# Author: Tedley Meralus 
# Contact: @TechGameTeddy
# Menu driven script to automate and download a list of popular tools and utilities 
# to install on a Linux desktop
# inspired by OMG Ubuntu's infamous 
# Top Things to do after Installing Ubuntu xx.xx articles
# check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04
#

# Define Variables 
STARTOFSCRIPT='date'
#ALLPPA="AllPPA"
INSTALL="sudo apt-get install"
ADDPPA="sudo add-apt-repository "
ALLPPA= echo "all ppa's installed"
ALLPPA="ppa:dawidd0811/neofetch ppa:vlijm/spaceview ppa:gerardpuig/ppa ppa:shutter/ppa ppa:atareao/atareao ppa:webupd8team/sublime-text-3"
SEARCH="apt-cache search"
UPDATE="sudo apt-get udpate"
# Variables to install all available ppa's 
nvidia="ppa:graphics-drivers/ppa" 
neoppa="ppa:dawidd0811/neofetch"
sviewppa="ppa:vlijm/spaceview"
gerardpuig="ppa:gerardpuig/ppa"
shutppa="ppa:shutter/ppa"
atareaoppa="ppa:atareao/atareao"
subppa="ppa:webupd8team/sublime-text-3"
#Variables for apps being installed
ALLAPPS="$android-tools-adb $android-tools-fastboot $ftp $unity-tweak-tool $chrome $spaceview $putty $virtualbox $filezilla $gimp $git $gitg $libxss1 $libappindicator1 $libindicator7 $shutter s$paceview $steam $sublime-text-installer $synaptic $tor $transmission $uget $ubuntu-cleaner"
adb="android-tools-adb android-tools-fastboot" 
natgeo="national-geographic-wallpaper"
tweak="unity-tweak-tool"
#chrome="chromium-browser"
spaceview="spaceview"
putty="putty"
virtualbox="open-vm-tools-desktop"
mail="evolution"
ftp="filezilla"
gimp="gimp"
git="git"
guigit="gitg"
libxss1="libxss1"
libappindicator1="libappindicator1"
libindicator7="libindicator7"
#neofetch="neofetch"
screenshot="shutter"
#spaceview="spaceview"
steam="steam"
#sublime="sublime-text-installer"
synaptic="synaptic"
deebweb="tor"
torrent="transmission"
dlmanager="uget"
#systemcleaner="ubuntu-cleaner"
# ----------------------------------
# function to display menus
# ----------------------------------
show_menus() {
	clear
	date
	echo "|--------------------------------------------------------"
	echo "|--------------------------------------------------------"	
	echo "|         FRESH INSTALL                                  " 
	echo "|--------------------------------------------------------" 
	echo "| Essential tools/utilities to install 				   "
	echo "| after installing the latest version of Ubuntu          "
	echo "| created By @TechGameTeddy                              "
	echo "|                                                        "
	echo "|1. Run unattended installer                             "
	echo "|2. Install Dependancies                                 "
	echo "|3. Check Software List                                  "
	echo "|4. Contribute                                           "
	echo "|5. Exit                                                 " 
	echo "|--------------------------------------------------------"

}
software_list() {
	write_header " Package List "
	clear
	echo "|-----------------------------------------------------------------"	
	echo "|  Essential Tools to install post installing Ubuntu              " 
	echo "|-----------------------------------------------------------------"
	echo "|                                                                 "
	echo "|	001.Android Device Manager                                      " 
	echo "|	002.Chromium                                                    "
	echo "|	003.Filezilla                                                   "
	echo "|	004.Gimp                                                        "
	echo "|	005.Git                                                         "
	echo "|	006.Inkscape                                                    "
	echo "|	017.Putty                                                       "
	echo "| 008.Shutter                                                     "
	echo "|	010.Steam                                                       "  
	echo "|	011.Synaptic Package Manager                                    "
	echo "|	012.Tor                                                         "
	echo "|	013.Transmission                                                "
	echo "|	014.Ubuntu System Cleaner                                       "
	echo "|	015.Unity Tweak Tool                                            "
	echo "| 016.Visual Studio Code                                          "
	echo "| 017.Virtual Box                                                 "
	echo "|                                                                 "
	echo "|  type the "#" to learn more about each item                     "  
	echo "|  or press "m" to go back to the main menu                       "
	echo "| ----------------------------------------------------------------"
	sl_options
}
contributors(){
	write_header " Contributors "
	clear
	echo "|------------------------------------------------------------------"
	echo "|      ~~|~~|  |  /\  |\  || /  \   //~~\ |   |                    "
	echo "|        |  |--| /__\ | \ ||(    \ /|    ||   |                    "
	echo "|        |  |  |/    \|  \|| \    |  \__/  \_/                     "
	echo "|                                                                  "	
	echo "|                                                                  "
	echo "|  All Contributions are greatly appreciated and listed here       " 
	echo "|                                                                  "
	echo "|  1.Tedley Meralus @TechGameTeddy                                 "
	echo "|  2.Could be you                                                  "
	echo "|  3.Someone else not as great as you                              "
	echo "|                                                                  "
	echo "|  Send all contribution request via Twitter to @TechGameTeddy     "
	echo "|------------------------------------------------------------------"
	pause
}
# ----------------------------------
# learn more menu option
# ----------------------------------
learnmore(){
	echo "learn more" 
}
# ----------------------------------
#  UNATTENDED INSTALLER FUNCTION
# ----------------------------------
uinstaller(){
	echo "Installer started"
	#$((ADDPPA + ALLPPA))
	echo -n  "All Dependancies installed"
	echo -n  "Updating system now"
	#$UPDATE
	#read -t 3 -p  "Update complete"
	#echo -t 3 -p  "Installing all packages"
	#$INSTALL $ALLAPPS
        pause
}
# ----------------------------------
#  UNATTENDED DEPENDANCY CHECK
# ----------------------------------
install_check()
while true; do
	read -p "Begin unattended installer (y/n)" input
	case $input in
	[[yY])
		#$ALLPPA
		$INSTALL $ALLAPPS
		;; 
	[nN])
		backtomain
		break
      		;;
    *)
	echo "Invalid input..."
	echo "Please type (y)Yes or (n)No" 
	;;
esac
done
# ----------------------------------
#  Return functions
# ----------------------------------
#pause
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
# ----------------------------------
#back to main menu
# ----------------------------------
backtomain(){
  show_menus
}
# ----------------------------------
#  Main Menu Option
# ----------------------------------
one(){
	while true; do
	read -p "Are you sure you want to run the unattended installer?" input
	case $input in
	[yY][eE][sS]|[yY])
		install_check
		;; 
	[nN][oO]|[nN])
		backtomain
       		break;;
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
        #pause
}
## Option four Contributors()
four(){
	contributors
}
## Option five Exit ()
five(){
	clear
	exit
}
# ----------------------------------
#  SOFTWARE LIST MENU OPTIONS
# ----------------------------------
SL1(){
	echo "software list option selected"
	software_list
}
SL2(){
	echo "software list option selected"
	software_list
}
SL3(){
	echo "software list option selected"
	software_list
}
SL4(){
	echo "software list option selected"
	software_list
}
SL5(){
	echo "software list option selected"
	software_list
}
SL6(){
	echo "software list option selected"
	software_list
}
SL7(){
	echo "software list option selected"
	software_list
}
SL8(){
	echo "software list option selected"
	software_list
}
SL9(){
	apt-cache search neofetch
	software_list
}
SL10(){
	echo "software list option selected"
	software_list
}
SL11(){
	echo "software list option selected"
	software_list
}
SL12(){
	echo "software list option selected"
	software_list
}
SL13(){
	echo "software list option selected"
	software_list
}
SL14(){
	echo "software list option selected"
	software_list
}
SL15(){
	echo "software list option selected"
	software_list
}
SL16(){
	echo "software list option selected"
	software_list
}
SL17(){
	echo "software list option selected"
	software_list
}
SL18(){
	echo "software list option selected"
	software_list
}
SL19(){
	echo "software list option selected"
	software_list
}
SL20(){
	echo "software list option selected"
	software_list
}
# ----------------------------------
#  MAIN MENU
# ----------------------------------
read_options(){
	local choice
	read -p "Enter your choice [ 1 - 5] " choice
	case $choice in
		1) one    ;;
		2) two    ;;
		3) three  ;;
		4) four   ;;
		5) five   ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
# ----------------------------------
#  SOFTWARE LIST MENU 
# ----------------------------------
sl_options(){
	local softchoice
	read -p "Enter choice [ 001 - 020] " softchoice
	case $softchoice in
		001) SL1  ;;
		002) SL2  ;;
		003) SL3  ;;
		004) SL4  ;;
		005) SL5  ;;
		006) SL6  ;;
		007) SL7  ;;
		008) SL8  ;;
		009) SL9  ;;
		010) SL10 ;;
		011) SL11 ;;
		012) SL12 ;;
		013) SL13 ;;
		014) SL14 ;;
		015) SL15 ;;
		016) SL16 ;;
		017) SL17 ;;
		018) SL18 ;;
		019) SL19 ;;
		020) SL20 ;;
	[mM])
		show_menus
		#break
       		;;
		*) echo -e "${RED}Invalid option choose [ 001 - 020] or "m" to quit...${STD}" && sleep 2
       		clear     
		software_list 
		       ;;
esac
}
# ----------------------------------
# Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# ----------------------------------
# Main Menu logic - infinite loop
# ----------------------------------
while true
do
	show_menus
	read_options
done
