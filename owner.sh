VER="1.8.8~~"

A=./pjs/commands/owner/announce.js
B=./pjs/commands/owner/kill.js
C=./pjs/commands/owner/statfix.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
announce() {
    if [ -f "$A" ]; then
        rm -f $A
        echo "Disabled ANNOUNCE"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/owner/announce.js
        mv announce.js $A
        echo "Enabled ANNOUNCE"
    fi
    pause
}
kill() {
    if [ -f "$B" ]; then
        rm -f $B
        echo "Disabled KILL"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/owner/kill.js
        mv kill.js $B
        echo "Enabled KILL"
    fi
    pause
}
statfix() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled STATFIX"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/owner/statfix.js
        mv statfix.js $C
        echo "Enabled STATFIX"
    fi
    pause
}
onoff() {
    if [ -f "$A" ]; then
        echo "announce is on"
    else
        echo "announce if off"
    fi

    if [ -f "$B" ]; then
        echo "kill is on"
    else
        echo "kill if off"
    fi

    if [ -f "$C" ]; then
        echo "statfix is on"
    else
        echo "statfix if off"
    fi
    pause
}
back() {
    rm -f owner.sh
    exit 0
}
show_menuOWNER() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - G U I L D"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. announce"
    echo "2. kill"
    echo "3. statfix"
    echo "4. Back"
    echo "?. What is On/Off"
}
read_optionsOWNER() {
    local choicetwo
    read -p "Enter choice [ 1 - 4 ] " choicetwo
    case $choicetwo in
    1) announce ;;
    2) kill ;;
    3) statfix ;;
    4) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuOWNER
    read_optionsOWNER
done
