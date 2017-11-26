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
INSTALL="sudo apt-get install "
ADDPPA="sudo add-apt-repository "
ALLPPA="ppa:dawidd0811/neofetch ppa:vlijm/spaceview ppa:gerardpuig/ppa ppa:shutter/ppa ppa:atareao/atareao"
SEARCH="apt-cache search "
UPDATE="sudo apt-get udpate"
PPADIR="/etc/apt/sources.list/"
PPADIR2="/etc/apt/sources.list.d/"

# Variables to install all available ppa's 
nvidia="ppa:graphics-drivers/ppa" 
neoppa="ppa:dawidd0811/neofetch"
sviewppa="ppa:vlijm/spaceview"
gerardpuig="ppa:gerardpuig/ppa"
shutppa="ppa:shutter/ppa"
atareaoppa="ppa:atareao/atareao"
subppa="ppa:webupd8team/sublime-text-3"

#Variables for apps being installed
ALLAPPS="$adb $adb2 $code $chrome $deebweb $docker $ftp $gimp $git $gnucore $ink $libxss1 $libappindicator1 $libindicator7 $mail $natgeo $neofetch $npm $pol $putty $screenshot $steam $synaptic $systemcleaner $terminator $torrent $tweak $uget $unity $vagrant $virtualbox"
adb="android-tools-adb"
adb2="android-tools-fastboot" 
code="code"
chrome="chromium-browser"
deebweb="tor"
docker="docker"
ftp="filezilla"
gimp="gimp"
git="git"
gnucore="coreutils"
ink="inkscape"
libxss1="libxss1"
libappindicator1="libappindicator1"
libindicator7="libindicator7"
mail="evolution"
natgeo="national-geographic-wallpaper"
neofetch="neofetch"
npm="npm"
pol="playonlinux"
putty="putty"
screenshot="shutter"
steam="steam"
synaptic="synaptic"
systemcleaner="ubuntu-cleaner"
terminator="terminator"
torrent="transmission"
tweak="unity-tweak-tool"
uget="uget"
unity="unity-tweak-tool"
vagrant="vagrant"
virtualbox="open-vm-tools-desktop"
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
	echo "|	006.GNU Coreutils                                                         "
	echo "|	007.Inkscape                                                    "
	echo "|	008.Putty                                                       "
	echo "| 009.Shutter                                                     "
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
#	echo "|  or type "i" and the "#" to install individual apps             " 
	echo "|  press "m" to go back to the main menu                          "
	echo "| ----------------------------------------------------------------"
	sl_options
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
	vs_code
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
#  UNATTENDED INSTALLER FUNCTION
# ----------------------------------
uinstaller(){
	echo "Installer started"
	#echo "Downloading Dependancies"
	#$INSTALL $ALLPPA
	#echo "All Dependancies installed"
	echo "Updating system now"
	$UPDATE
	read -t 3 -p  "Update complete"
	echo -t 3 -p  "Installing all packages"
	$INSTALL $ALLAPPS
        pause
}

# ----------------------------------
#  Return functions
# ----------------------------------
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
	read -p "Are you sure you want to run the unattended installer?[y/n]" input
	case $input in
	[yY][eE][sS]|[yY])
		$INSTALL$ALLAPPS	
#uinstaller
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
## Option four Exit ()
four(){
	clear
	exit
}
# ----------------------------------
#  MAIN MENU
# ----------------------------------
read_options(){
	local choice
	read -p "Enter your choice [ 1 - 4] " choice
	case $choice in
		1) one    ;;
		2) two    ;;
		3) three  ;;
		4) four   ;;
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
	[iI]) 
		eval $INSTALL;;
	[mM])
		show_menus
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
	date_and_time
done

# ----------------------------------
#  Visual Studio Code installer
# ----------------------------------
#vs_code(){
#	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
# 	mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
# 	sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" #> /etc/apt/sources.list.d/vscode.list'
#	read "You must run apt-get update to complete"
#	read "Would you like to do that now?[y/n}" input
#	case $input in
#	[yY][eE][sS]|[yY])
#		$UPDATE
#		$INSTALL$vscode
#		;; 
#	[nN][oO]|[nN])
#		softwarelist
#       		break;;
#}
