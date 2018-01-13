# ----------------------------------
# Name: Visual Studio Code installer
# Author: Tedley Meralus 
# Contact: @TechGameTeddy
# download visual studio code
# ----------------------------------
vs_code(){
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
 	mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
 	sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" #> /etc/apt/sources.list.d/vscode.list'
	read "You must run apt-get update to complete"
	read "Would you like to do that now?[y/n}" input
	case $input in
	[yY][eE][sS]|[yY])
		$UPDATE
		$INSTALL$vscode
		;; 
	[nN][oO]|[nN])
		softwarelist
       		break;;
}
