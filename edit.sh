PONE=`sed -n 1p menu.sh`
PTWO=`echo "${PONE}" | sed -r 's/^.{5}//'`
VER=`echo "${PTWO}" | rev | cut -c2- | rev`
# VER="1.8.8~~"
pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
back() {
    rm -f edit.sh
    exit 0
}
rebuild() {
    wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/rebuild.sh
    sh rebuild.sh
    sleep 1
}
toggle() {
    wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/toggle.sh
    sh toggle.sh
    sleep 1
}
show_menu2() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - C O N F I G"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. Rebuild Config"
    echo "2. Toggle a Command"
    echo "3. Back"
}
read_options2() {
    local choicetwo
    read -p "Enter choice [ 1 - 3 ] " choicetwo
    case $choicetwo in
    1) rebuild ;;
    2) toggle ;;
    3) back ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
	show_menu2
	read_options2
done
rm -f edit.sh