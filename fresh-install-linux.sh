
#!/bin/bash
# Name: Fresh Install
# Author: Tedley Meralus
# Contact: @TechGameTeddy
# Menu driven script to automate and download a list of popular tools and utilities
# to install on an Ubuntu desktop
# inspired by OMG Ubuntu's infamous
# Top Things to do after Installing Ubuntu xx.xx articles
# check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04
#
# Define Variables
STARTOFSCRIPT='date'
INSTALL="sudo apt-get install "
ADDPPA="sudo add-apt-repository "
ALLPPA=" "
DEVTOOLS="./devtools"
DESKTOOLS="./desktools"
ADMINTOOLS="./admintools"
SEARCH="apt-cache search "
SHOW="apt-cache showpkg "
UPDATE="sudo apt-get udpate"
PPADIR="/etc/apt/sources.list.d/"

# Variables to install all available ppa's
nvidia="ppa:graphics-drivers/ppa" #Nvidia ppa
neoppa="ppa:dawidd0811/neofetch" #neofetch ppa
sviewppa="ppa:vlijm/spaceview" #spaceview ppa
gerardpuig="ppa:gerardpuig/ppa" #ubuntu cleaner ppa
shutppa="ppa:shutter/ppa" #Shutter screenshot ppa
atareaoppa="ppa:atareao/atareao" #national-geographic-wallpaper ppa

#Variables for apps being installed
ALLAPPS=""
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
	echo "| after installing the latest version of Ubuntu x64      "
	echo "| created By @TechGameTeddy                              "
	echo "|                                                        "
	echo "|1. Run unattended installer                             "
	echo "|2. Install Dependancies                                 "
	echo "|3. Install Desktop Pack                                 "
	echo "|4. Install Dev Pack                                     "
	echo "|5. Install Admin Pack                                   "
	echo "|6. Install All Packages                                 "
	echo "|7. Check Software List                                  "
	echo "|8. Check PPA Sources                                    "
	echo "|9. Check DPKG List                                      "
	echo "|10. Exit                                                 "
	echo "|--------------------------------------------------------"
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
#  Check Installed PPA sources
# ----------------------------------
sourcelist(){
	echo ""
	echo ""
	echo "|---------------------------------------------------------"
	echo   "PPA Packages currently installed for $USER on $HOSTNAME"
	echo "|---------------------------------------------------------"
				ls /etc/apt/sources.list.d/
	echo ""
	echo ""
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
#	echo "Please (y)Yes or (n)No
	;;
esac
done
        pause
}
## Option two Update PPA List ()
two(){
	$ADDPPA${ALLPPA[*]}
        pause
}
## Option three Check Software List()
three(){
	software_list
        pause
}
## Option four Check Sources
four(){
	sourcelist
	pause
}
## Option five Check Installed Packages
five(){
	dpkg --list
	pause
}
## Option six EXIT
six(){
	clear
	exit
}
## Option seven EXIT
seven(){
	clear
	exit
}
## Option eight EXIT
eight(){
	clear
	exit
}
## Option nine EXIT
nine(){
	clear
	exit
}
## Option six EXIT
ten(){
	clear
	exit
}
backup(){
	clear
	exit
}
# ----------------------------------
#  MAIN MENU
# ----------------------------------
read_options(){
	local choice
	read -p "Enter your choice [ 1 - 10] " choice
	case $choice in
		1) one    ;;
		2) two    ;;
		3) three  ;;
		4) four   ;;
		5) five   ;;
		6) six    ;;
		7) seven  ;;
		8) eight   ;;
		9) nine    ;;
		10) ten    ;;
		11) backup    ;;
		#*) echo -e "${RED}Error...${STD}" && sleep 1
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
