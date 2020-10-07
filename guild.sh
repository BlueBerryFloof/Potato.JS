PONE=`sed -n 1p menu.sh`
PTWO=`echo "${PONE}" | sed -r 's/^.{5}//'`
VER=`echo "${PTWO}" | rev | cut -c2- | rev`
# VER="1.8.8~~"

A=./pjs/commands/guild/ban.js
B=./pjs/commands/guild/kick.js
C=./pjs/commands/guild/prune.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
ban() {
    if [ -f "$A" ]; then
        rm -f $A
        echo "Disabled BAN"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/ban.js
        mv ban.js $A
        echo "Enabled BAN"
    fi
    pause
}
kick() {
    if [ -f "$B" ]; then
        rm -f $B
        echo "Disabled KICK"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/kick.js
        mv kick.js $B
        echo "Enabled KICK"
    fi
    pause
}
prune() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled PRUNE"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/guild/prune.js
        mv prune.js $C
        echo "Enabled PRUNE"
    fi
    pause
}
onoff() {
    if [ -f "$A" ]; then
        echo "ban is on"
    else
        echo "ban if off"
    fi

    if [ -f "$B" ]; then
        echo "kick is on"
    else
        echo "kick if off"
    fi

    if [ -f "$C" ]; then
        echo "prune is on"
    else
        echo "prune if off"
    fi
    pause
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
