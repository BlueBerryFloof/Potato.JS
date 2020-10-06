VER="1.8.8~~"

BAN=./pjs/commands/guild/ban.js
KICK=./pjs/commands/guild/kick.js
PRUNE=./pjs/commands/guild/prune.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
ban() {
    if [ -f "$BAN" ]; then
        rm -f $BAN
        echo "Disabled BAN"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/ban.js
        mv ban.js $BAN
        echo "Enabled BAN"
    fi
    pause
}
kick() {
    if [ -f "$KICK" ]; then
        rm -f $KICK
        echo "Disabled KICK"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/kick.js
        mv kick.js $KICK
        echo "Enabled KICK"
    fi
    pause
}
prune() {
    if [ -f "$PRUNE" ]; then
        rm -f $PRUNE
        echo "Disabled PRUNE"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/prune.js
        mv prune.js $PRUNE
        echo "Enabled PRUNE"
    fi
    pause
}
onoff() {
    if [ -f "$BAN" ]; then
        echo "ban is on"
    else
        echo "ban if off"
    fi

    if [ -f "$KICK" ]; then
        echo "kick is on"
    else
        echo "kick if off"
    fi

    if [ -f "$PRUNE" ]; then
        echo "prune is on"
    else
        echo "prune if off"
    fi
}
back() {
    rm -f guild.sh
    exit 0
}
show_menuGUILD() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - G U I L D"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. ban"
    echo "2. kick"
    echo "3. prune"
    echo "4. Back"
    echo "?. What is On/Off"
}
read_optionsGUILD() {
    local choicetwo
    read -p "Enter choice [ 1 - 4 ] " choicetwo
    case $choicetwo in
    1) ban ;;
    2) kick ;;
    3) prune ;;
    4) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuGUILD
    read_optionsGUILD
done
