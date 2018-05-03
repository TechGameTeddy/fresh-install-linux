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
	echo "|--------------------------------------------------------"
	echo "|--------------------------------------------------------"
	echo "|         FRESH INSTALL                                  "
	echo "|--------------------------------------------------------"
	echo "| Essential tools/utilities to install 		       "
	echo "| after installing or crashing your version of Ubuntu    "
	echo "| created By @TechGameTeddy                              "
	echo "|                                                        "
	echo "|1. Run Fresh Install                                    "
	echo "|2. Run Backup Utility                                   "
	echo "|3. Check Software List(s)                               "
	echo "|4. Exit                                                 "
	echo "|--------------------------------------------------------"
}
software_backup() {
	write_header " Backup utility "
	clear
	date
	echo "|--------------------------------------------------------"
	echo "|--------------------------------------------------------"
	echo "|         Backup Utility                                 "
	echo "|--------------------------------------------------------"
	echo "| Essential tools/utilities to install 	               "
	echo "| after installing or crashing your version of Ubuntu    "
	echo "| created By @TechGameTeddy                              "
	echo "|                                                        "
	echo "|1. list  pacakges                                       "
	echo "|2. list  snaps                                          " 
	echo "|3. check sources.d list                                 "
	echo "|4. Install software list(s)                             "
	echo "|5. add to software list                                 "
	echo "|6. Exit                                                 "
	echo "|--------------------------------------------------------"
}
fresh_install() {
	write_header " Fresh Install utility "
	clear
	echo "|-----------------------------------------------------------------"
	echo "|  Essential Tools to install post installing Ubuntu              "
	echo "|-----------------------------------------------------------------"
	echo "|1. list  pacakges                                                "
	echo "|2. list  snaps                                                   "
	echo "|3. check sources.d list                                          "
	echo "|5. add to software list                                          "
	echo "|4. Install software list(s)                                      "
	echo "|4. Run Full Install                                              "
	echo "|6. Back to Main                                                  "
	echo "|-----------------------------------------------------------------"
	echo "| ----------------------------------------------------------------"
	sl_options
}
sl_lists() {
	write_header " Software Lists "
	clear
	echo "|-----------------------------------------------------------------"
	echo "|                       Software Lists                            "
	echo "|-----------------------------------------------------------------"
	echo "|1. Desktop List                                                  "
	echo "|2. Developer List                                                "
	echo "|3. Sysadmin List                                                 "
	echo "|4. Create New List                                               "
	echo "|5. Check Backup Lists                                            "
	echo "|6. Back to Main                                                  "
	echo "|-----------------------------------------------------------------"
	echo "| ----------------------------------------------------------------"
	sl_options
}
---------------------------------
#  Main Menu Option
# ----------------------------------
one(){
        pause
}
## Option two Update PPA List ()
two(){

}
## Option three Check Software List()
three(){
	#software_list
        #pause
}
## Option four Exit ()
four(){
	#clear
	exit
}
---------------------------------
#  Backup Utility Options SB1 
# ----------------------------------
SB1(){
        pause
}
## Option two Update PPA List ()
SB2(){

}
## Option three Check Software List()
SB3(){
	#software_list
        #pause
}
## Option four Exit ()
SB4(){
	#clear
	exit
}
SB5(){
	#clear
	exit
}
SB6(){
	#clear
	exit
}
---------------------------------
#  Fresh Install Utility Options FI1
# ----------------------------------
FI1(){
        pause
}
## Option two Update PPA List ()
FI2(){

}
## Option three Check Software List()
FI3(){
	#software_list
        #pause
}
## Option four Exit ()
FI4(){
	#clear
	exit
}
FI5(){
	#clear
	exit
}
FI6(){
	#clear
	exit
}

---------------------------------
#  Software List Utility Options SOL1
# ----------------------------------
SOL1(){
        pause
}
## Option two Update PPA List ()
SOL2(){

}
## Option three Check Software List()
SOL3(){
	#software_list
        #pause
}
## Option four Exit ()
SOL4(){
	#clear
	exit
}
SOL5(){
	#clear
	exit
}
SOL6(){
	#clear
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
		*) echo -e "${RED}Error...${STD}" && sleep 1
	esac
}
# ----------------------------------
#  SOFTWARE LIST MENU
# ----------------------------------
software_backup_list(){
	local sblchoice
	read -p "Enter choice [ 001 - 006] " sblchoice
	case $sblchoice in
		1) SB1  ;;
		2) SB2  ;;
		3) SB3  ;;
		4) SB4  ;;
		5) SB5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 6] or "q" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
fresh_install_list(){
	local filchoice
	read -p "Enter choice [ 001 - 006] " filchoice
	case $filchoice in
		1) FI1  ;;
		2) FI2  ;;
		3) FI3  ;;
		4) FI4  ;;
		5) FI5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 6] or "q" to quit...${STD}" && sleep 2
       		clear
		software_list
		       ;;
esac
}
sl_option_list(){
	local solchoice
	read -p "Enter choice [ 001 - 006] " solchoice
	case $solchoice in
		1) SOL1  ;;
		2) SOL2  ;;
		3) SOL3  ;;
		4) SOL4  ;;
		5) SOL5  ;;
	[qQ])
		show_menus
       		;;
		*) echo -e "${RED}Invalid option choose [ 1 - 6] or "q" to quit...${STD}" && sleep 2
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


