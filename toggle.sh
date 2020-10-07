PONE=`sed -n 1p menu.sh`
PTWO=`echo "${PONE}" | sed -r 's/^.{5}//'`
VER=`echo "${PTWO}" | rev | cut -c2- | rev`
# VER="1.8.8~~"

pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
gifs() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/gifs.sh
	sh gifs.sh
	sleep 1
}
guild() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/guild.sh
	sh guild.sh
	sleep 1
}
music() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/music.sh
	sh music.sh
	sleep 1
}
other() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/other.sh
	sh other.sh
	sleep 1
}
owner() {
	wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/owner.sh
	sh owner.sh
	sleep 1
}
back() {
    rm -f toggle.sh
    exit 0
}
show_menu3() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - T O G G L E"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. Gifs"
    echo "2. Guild"
    echo "3. Music"
    echo "4. Other"
	echo "5. Owner"
	echo "6. Back"
}
read_options3() {
    local choicetwo
    read -p "Enter choice [ 1 - 6 ] " choicetwo
    case $choicetwo in
    1) gifs ;;
    2) guild ;;
    3) music ;;
    4) other ;;
	5) owner ;;
	6) back ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
	show_menu3
	read_options3
done