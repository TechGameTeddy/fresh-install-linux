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
UPDATE="sudo apt-get udpate"
BKDIR="pwd"
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
	echo "|3. Check Systyem Specs                                           |"
	echo "|4. Check Systyem with Neofetch                                   |"
	echo "|                                                                 |"
	echo "| Type 'e' to exit                                                |"
	echo "|                                                                 |"
	echo "|-----------------------------------------------------------------|"
}
fresh_install_menu(){
	clear
	echo "|-----------------------------------------------------------------|"
	echo "|  Essential Tools to install post installing Ubuntu              |"
	echo "|-----------------------------------------------------------------|"
	echo "|       The Fresh Installer will do the following                 |"
	echo "|                                                                 |"
	echo "|         Add ppa's to /etc/apt/sources.list.d                    |"
	echo "|         Install OMG Ubuntu suggested packages                   |"
	echo "|         install snaps from snaps list                           |"
	echo "|                                                                 |"
	echo "|   1.Run OMG Ubuntu suggested Installer                          |"
	echo "|   2.Restore Backup                                              |"
	echo "|                                                                 |"
	echo "| Type 'm' to go back to main menu                                |"
	echo "|                                                                 |"
	echo "|-----------------------------------------------------------------|"
	echo "| ----------------------------------------------------------------|"
	fresh_install_list
}
bk_package_list() {
	clear
	time
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
	echo "|1. Run Full Backup Now                                           |"
	echo "|2. Check Snap Packages                                           |"
	echo "|3. Create Backup CronJob                                         |"
	echo "|4. Check Backup Dir against OS                                   |"
	echo "|                                                                 |"
	echo "| Type 'm' to go back to main menu                                |"
	echo "|                                                                 |"
	echo "|-----------------------------------------------------------------|"
	backup_lists
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
        sysinfo_script.sh
}
four(){
        neo_install
}
# FRESH INSTALL UTILITY
#  Options FI1 List packages to be installed
FI1(){
	cat omgubuntulist.txt
	pause
	#cat omgubuntulist.txt | xargs sudo apt-get install -y
}
FI2(){
	clear
	backtomain
	## Options FI2 List snap packages tomkdir /tmp/FIbackup/sources/
	# restore backup list 
}
# BACKUP UTILITY
#  Option One to run backup now
BK1(){
		dpkg --list >> {$BKDIR}/packagelist.txt
		echo "backed up package list"
 	  mkdir /tmp/FIbackup/sources/
		cp /etc/apt/sources.list.d/* {$BKDIR}/sources/sourcelist.txt

		pause
}
## Check Backup Dir against OS
BK2(){
        numbertest
				#check snap packages
}
## Option three back to main menu
BK3(){
  			numbertest
				#create backup cron job
}
## Option three back to main menu
BK4(){
	numbertest
	#use diff -u to check packages
}
neo_install(){
cd neo/
sudo make install
cd ..
neofetch
pause
}
#  MAIN MENU
read_options(){
	local choice
	read -p "Enter your choice [ 1 - 4] " choice
	case $choice in
		1) one    ;;
		2) two    ;;
		3) three  ;;
		4) four  ;;
		[eE])	exit_script ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "q" to quit...${STD}" && sleep 2
	esac
}
fresh_install_list(){
	local filchoice
	read -p "Enter choice [ 1 - 2] " filchoice
	case $filchoice in
		1) FI1  ;;
		2) FI2  ;;
		[mM])	show_menus ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 2] or "e" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
#  BACKUP UTILITY MENU
backup_list(){
	local sblchoice
	read -p "Enter choice [ 1 - 4] " sblchoice
	case $sblchoice in
		1) BK1  ;;
		2) BK2  ;;
		3) BK3  ;;
		4) BK4  ;;
		[mM])	show_menus ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "e" to quit...${STD}" && sleep 2
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
# Exit Script
# ----------------------------------
exit_script(){
	clear
	exit
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
