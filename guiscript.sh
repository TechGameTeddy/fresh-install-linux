# Name: Sample Gui for Bash Scripts
# Author: Tedley Meralus
# Contact: @TechGameTeddy
# written with traps, signals and loops
#
#
#Variables for apps being installed
ALLVARS=""
# function to display menus
# ----------------------------------
show_menus() {
	clear
	date
	echo "|-----------------------------------------------------------------------------------"
	echo "|-----------------------------------------------------------------------------------"
	echo "|------------------------Sample Gui for Bash Scripts------------------------------- "
	echo "|-------------------written with traps, signals and loops-------------------------- "
	echo "|-----------------------------------------------------------------------------------"
	echo "|-----------------------------------------------------------------------------------"
	echo "| Redis Development Setup             	        	                                  "
	echo "| For Development purposes                                                          "
	echo "| created By @TechGameTeddy                                                         "
	echo "|                                                                                   "
	echo "|1.Install Redis4.0.9                                                               "
	echo "|2.Check if Redis is installed                                                      "
	echo "|3.Check Check Redis Ports                                                          "
	echo "|4.Check All Redis log locations                                                    "
	echo "|5.Check Check Redis Ports                                                          "
	echo "|10.Exit                                                                            "
	echo "|-----------------------------------------------------------------------------------"
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
## Option one
one(){

}

## Option two
two(){
}

## Option three
three(){
}

## Option four Exit ()
four(){

}
## Option five
five(){

}
## Option for Exit ()
exit(){

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
		4) five   ;;
		4) six   ;;
		4) seven   ;;
		4) eight   ;;
		4) nine   ;;
		4) ten   ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
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
