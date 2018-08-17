#!/bin/bash
# Name: Fresh Install
# Author: Tedley Meralus
# Contact: @TechGameTeddy
# Menu driven script to backup and restore files from an Ubuntu desktop
# add to your github channel for personal use
# inspired by OMG Ubuntu's infamous
# Top Things to do after Installing Ubuntu xx.xx articles
#s Check Sudo
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
# Defined Variables
UPDATE="sudo apt-get update"
BKDIR=$(pwd)
DATE="date"
PPADIR="/etc/apt/sources.list.d/"
# ----------------------------------
# function to display menus
# ----------------------------------
show_menus() {
	clear
	date
	echo "|------------------------------------------------------|"
	echo "|------------------------------------------------------|"
	echo "|         FRESH INSTALL                                |"
	echo "|------------------------------------------------------|"
	echo "| Essential tools/utilities to install 	               |"
	echo "| after installing or crashing your version of Ubuntu  |"
	echo "| created By @TechGameTeddy                            |"
	echo "|                                                      |"
	echo "|1. Run Fresh Install Utility                          |"
	echo "|2. Go to Backup Menu                                  |"
	echo "|3. Restore Backup                                     |"
	echo "|4. Check System with Neofetch                         |"
	echo "|                                                      |"
	echo "| Type 'e' to exit                                     |"
	echo "| Type 'p' to push to github                           |"
	echo "|                                                      |"
	echo "|------------------------------------------------------|"
}
bk_package_list(){
	clear
	date
	echo "|-------------------------------------------------------|"
	echo "|-------------------------------------------------------|"
	echo "|         Backup Utility                                |"
	echo "|-------------------------------------------------------|"
	echo "| Backup Utility is used for backing up current list    |"
	echo "| of installed packages, ppa's, and sources             |"
	echo "| on a working Ubuntu System                            |"
	echo "| using rsync                                           |"
	echo "|                                                       |"
	echo "|        The Utility will back the following            |"
	echo "|        to the backup folder in this current dir       |"
	echo "|                                                       |"
	echo "|          *Backup currently installed pacakges         |"
	echo "|          *Backup PPA sources                          |"
	echo "|          *Backup Snap Packages                        |"
	echo "|          *Backup Alias Shortcuts for $USER         |"
	echo "|                                                       |"
	echo "|1. Run Full Backup Now                                 |"
	echo "|2. Backup Package List                                 |"
	echo "|3. Backup PPA sources                                  |"
	echo "|4. Backup Snaps                                        |"
	echo "|5. Backup Alias Shortcuts                              |"
	echo "|6. Check Backup Dir against OS                         |"
	echo "|                                                       |"
	echo "| Type 'm' to go back to main menu                      |"
	echo "|                                                       |"
	echo "|-------------------------------------------------------|"
	backup_list
}
# Main Menu Option / Option one for Fresh install
one(){
echo "STARTING RESTORE" && sleep 1
echo "Adding PPA Sources" && sleep 1
cp $BKDIR/sources/* /etc/apt/sources.list.d/
echo "Installing Snapd" && sleep 1
sudo apt-get -y install snap
echo "Moving snaps to Snap folder" && sleep 1
cp $BKDIR/backup/snaps/* /var/snap/
echo "Snaps moved successfully to snap folder"
echo "Running Update" && sleep 1
$UPDATE
echo "Update Complete" && sleep 1
echo "Installing backup package" && sleep 1
cat /backup/backuplist | xargs sudo apt-get install -y
echo "package list installed" && sleep 1
echo "Fresh Install Completed" && sleep 3
pause
}
## Option two for backup utility
two(){
 bk_package_list
}
## Option three Restore Backup List
three(){
  numbertest
 #split backup list into segments of 100
 #add backup list to it own folder
 #split -n l/100 backuplist > /pgklist/pkgset
 #for every file in pkglist folder
 # run install line
 #sudo apt-get install $(cat ~/github/fresh-install-linux/backups/backuplist | awk '{print $1}')
#OR
#sudo apt-get install dselect
#sudo dpkg --set-selections < backuplist.txt
#sudo apt-get dselect-upgrade

}
## Option four Install and run Neofetch
four(){
  neo_install
}
#  RUN FULL BACKUP NOW
BK1(){
	full_backup
	pause
}
## BACKUP PACKAGE LIST
BK2(){
	echo "Backing up PPA Sources" && sleep 1
	cp /etc/apt/sources.list.d/* $BKDIR/backups/sources/
	echo "Backup Completed" && sleep 1
	pause
}
## BACKUP PPA SOURCES
BK3(){
	echo "Backing up PPA Sources" && sleep 1
	cp /etc/apt/sources.list.d/* $BKDIR/backups/sources/
	echo "Backup Completed" && sleep 1
	pause
}
## BACKUP SNAPS
BK4(){
  echo "Backing up Snap Packages" && sleep 1
	cp -r /var/snap/* $BKDIR/backups/snaps/
	echo "Backup Completed"
	pause
}
## Backup Alias for current user
BK5(){
 cat ~/.bashrc > $BKDIR/backups/alias_shortcuts
}
## Check backup list with current pc package list
BK6(){
	dpkg -l | grep ^ii | awk '{print $2}' > $BKDIR/currentlist
	sort $BKDIR/currentlist $BKDIR/backups/backuplist | uniq -u > diff.txt
	if [ -s diff.txt ]; then
	echo "Certain pacakges from backup havent been installed" && sleep 2
	echo "Run the insatller again until this file is empty" && sleep 2
	echo "Current packages not installed from backup" && sleep 4
	cat diff.txt
  else
	echo "Backup matches currenly installed Packages" && sleep 2
	fi
	pause
}
full_backup(){
	echo "Starting Full backup"
	if [ -f "$BKDIR/backups/backuplist" ]; then
		echo "BackupList already created"  && sleep 1
		echo "Updating Backup List"  && sleep 1
		dpkg -l | grep ^ii | awk '{print $2}' >> $BKDIR/backups/backuplist
	else
		dpkg -l | grep ^ii | awk '{print $2}' > $BKDIR/backups/backuplist
	fi
	echo "Backing up PPA Sources" && sleep 1
	cp /etc/apt/sources.list.d/* $BKDIR/backups/sources/
	echo "Backup Completed" && sleep 1
	echo "Backing up Snap Packages" && sleep 1
	cp -r /var/snap/* $BKDIR/backups/snaps/
	echo "Backup Completed"
	pause
}
neo_install(){
cd neo/
sudo make install
cd ..
neofetch
pause
}
git_push(){
echo "PLEASE NOTE"  && sleep 1
echo "THIS ONLY WORKS IF THIS PROJECT WAS FORKED"  && sleep 1
echo "AND YOUR PUBLIC KEY IS ADDED TO GITHUB"  && sleep 1
echo "STOP SCRIPT AND COMMENT OUT THE git_push FUNCTION"  && sleep 1
echo " TO RUN PROPERLY"  && sleep 1
#git add *
#git add */*
#git commit -m "ran fresh install on $DATE"
#git push origin master
#echo "PLEASE RUN git pull to refresh"
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
		4) four   ;;
		[eE])	exit_script ;;
		[pP])	git_push ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "e" to exit...${STD}" && sleep 2
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
		4) BK4  ;;
		5) BK5  ;;
		6) BK6  ;;
		[mM])	show_menus ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "m" to quit...${STD}" && sleep 2
       		clear
		       ;;
esac
}
#  Return functions
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
#  Return functions
numbertest(){
  read -p "no function used right now..."
  backtomain
}
# Exit Script
exit_script(){
	clear
	exit
}
#back to main menu
backtomain(){
  show_menus
}
# Trap CTRL+C, CTRL+Z and quit singles
trap 'Where you going? Press e to exit' SIGINT SIGQUIT SIGTSTP
# ----------------------------------
# Main Menu logic - infinite loop
# ----------------------------------
while true
do
	show_menus
	read_options
	date_and_time
done
