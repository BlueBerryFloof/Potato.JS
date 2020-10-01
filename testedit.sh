pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
back() {
    return
}
rebuild() {
    wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/rebuild.sh
    sh rebuild.sh
    sleep 1
    show_menu2
    read_options2
}
enable() {
    wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/enable.sh
    sh enable.sh
    sleep 1
    show_menu2
    read_options2
}
disable() {
    wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/disable.sh
    sh disable.sh
    sleep 1
    show_menu2
    read_options2
}
menukill() {
	rm -f menu.sh
    rm -f testedit.sh
	exit 0
}
show_menu2() {
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
while true; do
	show_menu2
	read_options2
done
rm -f testedit.sh