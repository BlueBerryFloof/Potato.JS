pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
if [ 1 -eq 0 ]; then
    show_menu
    read_options
    back() {
        show_menus1
        read_options1
    }
    show_menu() {
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
    read_options() {
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
fi
echo "This is edit.sh"
echo "This is still work in progress"
pause
rm -f edit.sh