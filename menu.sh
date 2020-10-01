VER="1.8.2~~"
MAIN =$(pwd)
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
install() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/install.sh
	sh install.sh
	sleep 1
	edit
}
update() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/update.sh
	sh update.sh
	sleep 1
}
edit() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/edit.sh
	sh edit.sh
	sleep 1
}
back() {
	show_menus
	read_options
}
rebuild() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/rebuild.sh
	sh rebuild.sh
	sleep 1
	show_menus2
	read_options2
}
enable() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/enable.sh
	sh enable.sh
	sleep 1
	show_menus2
	read_options2
}
disable() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/disable.sh
	sh disable.sh
	sleep 1
	show_menus2
	read_options2
}
remove() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/remove.sh
	sh remove.sh
	sleep 1
}
show_menus() {
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
menukill() {
	rm -f menu.sh
	exit 0
}
read_options() {
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
trap '' SIGINT SIGQUIT SIGTSTP
while true; do
	show_menus
	read_options
done
