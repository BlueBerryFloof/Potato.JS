VER="1.7.1~~"
MAIN =$(pwd)
DEP_ONE=$(which git)
DEP_TWO=$(which npm)
DEP_THREE=$(which node)
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
install() {
	if [ -z "$DEP_ONE" ]; then
		echo "Missing git please install and try again"
		pause
		exit 0
	fi
	if [ -z "$DEP_TWO" ]; then
		echo "Missing npm please install and try again"
		pause
		exit 0
	fi
	if [ -z "$DEP_THREE" ]; then
		echo "Missing node please install and try again"
		pause
		exit 0
	fi
	git clone https://github.com/BlueBerryFloof/Potato.JS.git
	mv ./Potato.JS ./pjs
	cd ./pjs
	npm i
	cd ../
	rm ./pjs/QI.sh
	echo "echo 'Starting Bot!'" >run.sh
	echo "node index.js" >run.sh
	echo "Bot Run File Made"
	sleep 1
	edit
}
update() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/update.sh
	if [ -d "./pjs" ]; then
		sh update.sh
	else
		echo "P.JS is not installed or the directory has been renamed"
		pause
	fi
	sleep 1
	rm update.sh
}
edit() {
	if [ -d "./pjs" ]; then
		show_menus2
		read_options2
	else
		echo "P.JS is not installed or the directory has been renamed"
		pause
	fi
	sleep 1
}
back() {
	show_menus1
	read_options1
}
rebuild() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/rebuild.sh
	sh rebuild.sh
	sleep 1
	show_menus2
	read_options2
	rm -f rebuild.sh
}
enable() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/enable.sh
	sh enable.sh
	sleep 1
	show_menus2
	read_options2
	rm -f enable.sh
}
disable() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/disable.sh
	sh disable.sh
	sleep 1
	show_menus2
	read_options2
	rm -f disable.sh
}
remove() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/remove.sh
	sh remove.sh
	sleep 1
	rm -f remove.sh

}
show_menus1() {
	if [ -d "./pjs" ]; then
		clear
		echo "~V${VER}~~~~~~~~~~~~"
		echo " P O T A T O . J S"
		echo "~~~~~~~~~~~~~~~~~~~~~"
		echo "1. Update Potato.JS"
		echo "${RED}2. Edit Potato.JS - W.I.P.${STD}"
		echo "3. Remove Potato.JS"
		echo "4. Exit"
	else
		clear
		echo "~V${VER}~~~~~~~~~~~~"
		echo " P O T A T O . J S"
		echo "~~~~~~~~~~~~~~~~~~~~~"
		echo "1. Install Potato.JS"
		echo "2. Exit"
	fi
}
show_menus2() {
	clear
	echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~~~"
	echo " P O T A T O . J S - C O N F I G"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Rebuild Config"
	echo "2. Enable a Command"
	echo "3. Disable a Command"
	echo "4. Back"
	echo "5. Exit"
}
menukill() {
	rm -f menu.sh
	exit 0
}
read_options1() {
	if [ -d "./pjs" ]; then
		local choiceone
		read -p "Enter choice [ 1 - 4 ] " choiceone
		case $choiceone in
		1) update ;;
		2) edit ;;
		3) remove ;;
		4) menukill ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2 ;;
		esac
	else
		local choiceone
		read -p "Enter choice [ 1 - 2 ] " choiceone
		case $choiceone in
		1) install ;;
		2) menukill ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2 ;;
		esac
	fi

}
read_options2() {
	local choicetwo
	read -p "Enter choice [ 1 - 5 ] " choicetwo
	case $choicetwo in
	1) rebuild ;;
	2) enable ;;
	3) disable ;;
	4) back ;;
	5) menukill ;;
	*) echo -e "${RED}Error...${STD}" && sleep 2 ;;
	esac
}
trap '' SIGINT SIGQUIT SIGTSTP
while true; do
	show_menus1
	read_options1
done
