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
SHOW="apt-cache showpkg "
#UPDATE="apt-get udpate"
PPADIR="/etc/apt/sources.list/"
PPADIR2="/etc/apt/sources.list.d/"
fre
# Variables to install all available ppa's
nvidia="ppa:graphics-drivers/ppa" #Nvidia ppa
neoppa="ppa:dawidd0811/neofetch" #neofetch ppa
sviewppa="ppa:vlijm/spaceview" #spaceview ppa
gerardpuig="ppa:gerardpuig/ppa" #ubuntu cleaner ppa
shutppa="ppa:shutter/ppa" #Shutter screenshot ppa
atareaoppa="ppa:atareao/atareao" #national-geographic-wallpaper ppa

#Variables for apps being installed
ALLAPPS="android-tools-adb android-tools-fastboot chromium-browser docker elinks filezilla gimp git coreutils inkscape libappindicator1 libindicator7 evolution national-geographic-wallpaper neofetch npm playonlinux putty shutter steam synaptic terminator tor transmission ubuntu-cleaner unity-tweak-tool uget vagrant virtualbox open-vm-tools-desktop"
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
	echo "|	001.Android Device Manager                                      "
	echo "|	002.Chromium                                                    "
	echo "|	003.Filezilla                                                   "
	echo "|	004.Gimp                                                        "
	echo "|	005.Git                                                         "
	echo "|	006.GNU Coreutils                                               "
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
	echo "|  press "m" to go back to the main menu                          "
	echo "| ----------------------------------------------------------------"
	sl_options
}
# ----------------------------------
#  UNATTENDED INSTALLER FUNCTION
# ----------------------------------
uinstaller(){
	echo "Installer started"
	echo "Downloading Dependancies"
	sudo apt-add-repository ${ALLPPA[*]}
	echo "All Dependancies installed"
	echo "Updating system now"
	$UPDATE
	echo "Update complete"
	echo "Installing all packages"
	sudo apt-get install ${ALLAPPS[*]}
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
		uinstaller
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
	sudo apt-add-repository ${ALLPPA[*]}
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
