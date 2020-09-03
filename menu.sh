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
	sudo npm i
	cd ../
	edit
}
update() {
	sh update.sh
}
edit() {
	show_menus2
	read_options2
	sleep 1
}
back() {
	show_menus1
	read_options1
}
rebuild() {
	sh rebuild.sh
	sleep 1
	show_menus2
	read_options2
}
enable() {
	sh enable.sh
	sleep 1
	show_menus2
	read_options2
}
disable() {
	sh disable.sh
	sleep 1
	show_menus2
	read_options2
}
remove() {
	sh remove.sh
}
show_menus1() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo " P O T A T O . J S"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Install Potato.JS"
	echo "2. Update Potato.JS"
	echo "3. Edit Potato.JS"
	echo "4. Remove Potato.JS"
	echo "5. Exit"
}
show_menus2() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo " P O T A T O . J S - C O N F I G"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Rebuild Config"
	echo "2. Enable a Command"
	echo "3. Disable a Command"
	echo "4. Back"
}
menukill() {
	rm disable.sh
	rm enable.sh
	rm rebuild.sh
	rm menu.sh
	rm remove.sh
	rm update.sh
	exit 0
}
read_options1() {
	local choiceone
	read -p "Enter choice [ 1 - 5 ] " choiceone
	case $choiceone in
	1) install ;;
	2) update ;;
	3) edit ;;
	4) remove ;;
	5) menukill 0 ;;
	*) echo -e "${RED}Error...${STD}" && sleep 2 ;;
	esac
}
read_options2() {
	local choicetwo
	read -p "Enter choice [ 1 - 4 ] " choicetwo
	case $choicetwo in
	1) rebuild ;;
	2) enable ;;
	3) disable ;;
	4) back ;;
	*) echo -e "${RED}Error...${STD}" && sleep 2 ;;
	esac
}
trap '' SIGINT SIGQUIT SIGTSTP
while true; do
	show_menus1
	read_options1
done
