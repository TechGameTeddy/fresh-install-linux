#!/bin/bash
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
SHOW="apt-cache showpkg "
UPDATE="sudo apt-get udpate"
BKDIR="pwd"
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
	#echo "| Type 'p' to push to github                          |"
	echo "|                                                      |"
	echo "|------------------------------------------------------|"
}
bk_package_list() {
	clear
	time
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
	echo "|                                                       |"
	echo "|1. Run Full Backup Now                                 |"
	echo "|2. Backup PPA sources                                  |"
	echo "|3. Backup Snaps                                        |"
	echo "|4. Create Backup CronJob                               |"
	echo "|5. Check Backup Dir against OS                         |"
	echo "|                                                       |"
	echo "| Type 'm' to go back to main menu                      |"
	echo "|                                                       |"
	echo "|-------------------------------------------------------|"
	backup_lists
}
# Main Menu Option / Option one for Fresh install
one(){
echo "STARTING RESTORE" && sleep 1
echo "Adding PPA Sources" && sleep 1
cp {$BKDIR}/sources/* /etc/apt/sources.list.d/
echo "Installing Snapd" && sleep 1
sudo apt-get -y install snap
echo "Moving snaps to Snap folder" && sleep 1
cp {$BKDIR}/backup/snaps/* /var/snap/
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
}
## Option four Install and run Neofetch
four(){
  neo_install
}
#  RUN FULL BACKUP NOW
BK1(){
	full_backup
	BK2
	BK3
	pause
}
## BACKUP PPA SOURCES
BK2(){
	echo "Backing up PPA Sources" && sleep 1
	cp /etc/apt/sources.list.d/* {$BKDIR}/backups/sources/
	echo "Backup Completed" && sleep 1
	pause
}
## BACKUP SNAPS
BK3(){
  echo "Backing up Snap Packages" && sleep 1
	cp /var/snap/* {$BKDIR}/backups/snaps/
	echo "Backup Completed"
}
## CHECK BACKUP CRON JOBS
BK4(){
	cp daily-cron /etc/cron.daily/
	echo "Daily Cron scheduled everyday at midnight "  && sleep 1
	echo "Edit /etc/cron.daily/daily-cron to send email alerts"  && sleep 1
	echo "or edit cron to change time of backups"  && sleep 1
	#create backup cron job
}
## CHECK BACKUP CRON JOBS
BK5(){
	dpkg -l | grep ^ii | awk '{print $2}' > {$BKDIR}/currentlist
	diff -u {$BKDIR}/currentlist ~{$BKDIR}/packagelist
}
full_backup(){
	echo "Starting Full backup"
	if [ -d "{$BKDIR}/backups/" ]; then
		echo "Folders already created"  && sleep 1
		dpkg -l | grep ^ii | awk '{print $2}' > {$BKDIR}/backups/backuplist
		echo "Backed up package list"   && sleep 1
	elif [ -f "{$BKDIR}/backups/backuplist" ]; then
		echo "Backuplist exists, creating new package list"
		dpkg -l | grep ^ii | awk '{print $2}' > {$BKDIR}/backups/packagelist
		pause
	else
		echo "Backups not found"  && sleep 1
		echo "Creating backup folder"  && sleep 1
		mkdir {$BKDIR}/backups/
		dpkg -l | grep ^ii | awk '{print $2}' > {$BKDIR}/backups/backuplist
		echo "backed up package list"
	fi
}
neo_install(){
cd neo/
sudo make install
cd ..
neofetch
pause
}
git_push(){
echo "PLEASE NOTE"  && sleep 2
echo "THIS ONLY WORKS IF THIS PROJECT WAS FORKED"  && sleep 2
git add *
git add */*
git commit -m "ran fresh install on $DATE"
git push -u origin master
echo "PLEASE RUN git pull to refresh"
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
#		[pP])	git_push ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "e" to exit...${STD}" && sleep 2
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
		4) BK5  ;;
		[mM])	show_menus ;;
		*) echo -e "${RED}Invalid option choose [ 1 - 4] or "m" to quit...${STD}" && sleep 2
       		clear
		software_list
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
