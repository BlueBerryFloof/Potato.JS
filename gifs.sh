VER="1.8.8~~"

A=./pjs/commands/gifs/animegif.js
B=./pjs/commands/gifs/furry.js
C=./pjs/commands/gifs/gif.js
D=./pjs/commands/gifs/gintama.js
E=./pjs/commands/gifs/jojo.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
animegif() {
    if [ -f "$A" ]; then
        rm -f $A
        echo "Disabled ANIME"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/gifs/animegif.js
        mv animegif.js $A
        echo "Enabled ANIME"
    fi
    pause
}
furry() {
    if [ -f "$B" ]; then
        rm -f $B
        echo "Disabled FURRY"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/gifs/furry.js
        mv furry.js $B
        echo "Enabled FURRY"
    fi
    pause
}
gif() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled GIF"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/gifs/gif.js
        mv gif.js $C
        echo "Enabled GIF"
    fi
    pause
}
gintama() {
    if [ -f "$D" ]; then
        rm -f $D
        echo "Disabled GINTAMA"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/gifs/gintama.js
        mv gintama.js $D
        echo "Enabled GINTAMA"
    fi
    pause
}
jojo() {
    if [ -f "$E" ]; then
        rm -f $E
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/gifs/jojo.js
        mv jojo.js $E
    fi
    pause
}

onoff() {
    if [ -f "$A" ]; then
        echo "anime is on"
    else
        echo "anime if off"
    fi

    if [ -f "$B" ]; then
        echo "furry is on"
    else
        echo "furry if off"
    fi

    if [ -f "$C" ]; then
        echo "gif is on"
    else
        echo "gif if off"
    fi

    if [ -f "$D" ]; then
        echo "gintama is on"
    else
        echo "gintama if off"
    fi

    if [ -f "$E" ]; then
        echo "jojo is on"
    else
        echo "jojo if off"
    fi
    pause
}

back() {
    rm -f gifs.sh
    exit 0
}
show_menuGIFS() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - G I F S"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. animegif"
    echo "2. furry"
    echo "3. gif search"
    echo "4. gintama"
    echo "5. jojo"
    echo "6. Back"
    echo "?. What is On/Off"
}
read_optionsGIFS() {
    local choicetwo
    read -p "Enter choice [ 1 - 6 ] " choicetwo
    case $choicetwo in
    1) animegif ;;
    2) furry ;;
    3) gif ;;
    4) gintama ;;
    5) jojo ;;
    6) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuGIFS
    read_optionsGIFS
done
