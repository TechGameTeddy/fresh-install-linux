# Name: Fresh Install
# Author: Tedley Meralus
# Contact: @TechGameTeddy
# Menu driven script to backup and restore files from an Ubuntu desktop
# add to your github channel for personal use
# inspired by OMG Ubuntu's infamous
# Top Things to do after Installing Ubuntu xx.xx articles
# check them out at http://www.omgubuntu.co.uk/2017/04/things-to-do-after-installing-ubuntu-17-04
#
# Define Variables
STARTOFSCRIPT='date'
#ALLPPA="AllPPA"
INSTALL="sudo apt-get install "
ADDPPA="sudo add-apt-repository "
SEARCH="apt-cache search "
SHOW="apt-cache showpkg "
UPDATE="apt-get udpate"
PPADIR="/etc/apt/sources.list/"
PPADIR2="/etc/apt/sources.list.d/"
# ----------------------------------
# function to display menus
# ----------------------------------
show_menus() {
	clear
	date
	echo "|-----------------------------------------------------------------|"
	echo "|-----------------------------------------------------------------|"
	echo "|         FRESH INSTALL                                           |"
	echo "|-----------------------------------------------------------------|"
	echo "| Essential tools/utilities to install 	                          |"
	echo "| after installing or crashing your version of Ubuntu             |"
	echo "| created By @TechGameTeddy                                       |"
	echo "|                                                                 |"
	echo "|1. Run Fresh Install Utility                                     |"
	echo "|2. Run Backup Utility                                            |"
	echo "|3. Check Software List(s)                                        |"
	echo "|4. Something                                                     |"
	echo "|5. Exit                                                          |"
	echo "|-----------------------------------------------------------------|"
}
fresh_install_menu() {
	write_header " Fresh Install utility "
	clear
	echo "|-----------------------------------------------------------------|"
	echo "|  Essential Tools to install post installing Ubuntu              |"
	echo "|-----------------------------------------------------------------|"
	echo "|       The Fresh Installer will do the following                 |"
	echo "|                                                                 |"
	echo "|         Add ppa's to /etc/apt/sources.list.d                    |"
	echo "|         Install pacakges from chosen list(s)                    |"
	echo "|         install snaps from snaps list                           |"
	echo "|                                                                 |"
	echo "|   1.Install EVERYTHING                                          |"
	echo "|   2.Install Developer Tools Only                                |"
	echo "|   3.Install Sysadmin Tools Only                                 |"
	echo "|   4.Install Desktop Tools Only                                  |"
	echo "|   5.go back to Main Menu                                        |"
	echo "|-----------------------------------------------------------------|"
	echo "| ----------------------------------------------------------------|"
	fresh_install_list
}
bk_package_list() {
	write_header " Backup utility "
	clear
	date
	echo "|-----------------------------------------------------------------|"
	echo "|-----------------------------------------------------------------|"
	echo "|         Backup Utility                                          |"
	echo "|-----------------------------------------------------------------|"
	echo "| Backup Utility is used for backing up current list              |"
	echo "| of installed packages, ppa's, and sources                       |"
	echo "| on a working Ubuntu System                                      |"
	echo "| using rsync                                                     |"
	echo "|                                                                 |"
	echo "|        The Utility will back the following                      |"
	echo "|        to the backup folder in this current dir                 |"
	echo "|                                                                 |"
	echo "|          *Backup currently installed pacakges                   |"
	echo "|          *Backup snap packages                                  |" 
	echo "|          *Backup PPA sources                                    |"
	echo "|                                                                 |"
	echo "|1. Run Backup Now                                                |"
	echo "|2. Check Backup Dir against OS                                   |"
	echo "|3. Save current system specs                                     |"
	echo "|4. Check Backup Dir against OS                                   |"
	echo "|5. Back To Main Menu                                             |"
	echo "|-----------------------------------------------------------------|"
	backup_list
}
sl_lists() {
	write_header " Software Lists "
	clear
	echo "|-----------------------------------------------------------------|"
	echo "|             Software Lists                                      |"
	echo "|-----------------------------------------------------------------|"
	echo "| Each list is a set of suggested packages for daily users,       |"
	echo "| developers, or admins.                                          |"
	echo "|                                                                 |"
	echo "| Fork this repo and create your own list for safe keeping        |"
	echo "|                                                                 |"
	echo "|                                                                 |"
	echo "|1. Check Desktop List                                            |"
	echo "|2. Check Developer List                                          |"
	echo "|3. Check Sysadmin List                                           |"
	echo "|4. Create New List                                               |"
	echo "|5. Back to Main                                                  |"
	echo "|-----------------------------------------------------------------|"
	echo "| ----------------------------------------------------------------|"
	sl_option_list
}
#  Main Menu Option
# Option one for Fresh install 
one(){
        fresh_install_menu
}
## Option two for backup utility
two(){
        bk_package_list
}
## Option three Check Software List()
three(){
        sl_lists
}
## Option four Exit ()
four(){
	numbertest
}
five(){
	clear
	exit
}
# FRESH INSTALL UTILITY
#
#  Options FI1 List packages to be installed
FI1(){
        numbertest
}
## Options FI2 List snap packages to be installed 
FI2(){
        numbertest
}
## Options FI3  Check PPA sources List
FI3(){
        numbertest
}
## Options FI4  
FI4(){
	#clear
	numbertest
}
## Options FI5 back to main menu  
FI5(){
	clear
	backtomain
}
#
# BACKUP UTILITY 
#
#  Option One to run backup now 
BK1(){
        numbertest
}
## Check Backup Dir against OS
BK2(){
        numbertest
}
## Option three back to main menu
BK3(){
	numbertest
}
## Option three back to main menu
BK4(){
	numbertest
}
## Option three back to main menu
BK5(){
	clear
	backtomain
}
#
# SOFTWARE LIST 
#
#  Options SOL1 to read Desktop package List
SF1(){
        pause
}
## Options SOL2 to read Developer package List
SF2(){
        pause
}
## Options SOL3 to read Sysadmin package List
SF3(){
        pause
}
## Options SOL4 to create a new list 
SF4(){
	#clear
	exit
}
## Options SOL4 to check backup list 
SF5(){
	clear
	backtomain
}
#  MAIN MENU
read_options(){
	local choice
	read -p "Enter your choice [ 1 - 5] " choice
	case $choice in
		1) one    ;;
		2) two    ;;
		3) three  ;;
		4) four   ;;
		5) five   ;;
		*) echo -e "${RED}Error...${STD}" && sleep 1
	esac
}

fresh_install_list(){
	local filchoice
	read -p "Enter choice [ 1 - 5] " filchoice
	case $filchoice in
		1) FI1  ;;
		2) FI2  ;;
		3) FI3  ;;
		4) FI4  ;;
		5) FI5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 5] or "q" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
#  BACKUP UTILITY MENU
backup_list(){
	local sblchoice
	read -p "Enter choice [ 1 - 5] " sblchoice
	case $sblchoice in
		1) BK1  ;;
		2) BK2  ;;
		3) BK3  ;;
		3) BK4  ;;
		3) BK5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 5] or "q" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
sl_option_list(){
	local solchoice
	read -p "Enter choice [ 1 - 5] " solchoice
	case $solchoice in
		1) SF1  ;;
		2) SF2  ;;
		3) SF3  ;;
		4) SF4  ;;
		5) SF5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 5] or "q" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
# ----------------------------------
#  Return functions
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
# ----------------------------------
#  Return functions
# ----------------------------------
numbertest(){
  read -p "no function used right now..." 
  backtomain
}
# ----------------------------------
#back to main menu
# ----------------------------------
backtomain(){
  show_menus
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


