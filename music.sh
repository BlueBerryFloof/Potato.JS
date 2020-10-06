VER="1.8.8~~"

A=./pjs/commands/music/play.js
B=./pjs/commands/music/musictrivia.js
C=./pjs/commands/music/volume.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
play() {
    if [ -f "$A" ]; then
        rm -f $A
        rm -f ./pjs/commands/music/leave.js
        rm -f ./pjs/commands/music/skip.js
        rm -f ./pjs/commands/music/shuffle.js
        rm -f ./pjs/commands/music/loop.js
        rm -f ./pjs/commands/music/nowplaying.js
        rm -f ./pjs/commands/music/pause.js
        rm -f ./pjs/commands/music/queue.js
        rm -f ./pjs/commands/music/remove.js
        rm -f ./pjs/commands/music/resume.js
        rm -f ./pjs/commands/music/skip.js
        rm -f ./pjs/commands/music/skipall.js
        rm -f ./pjs/commands/music/skipto.js
        echo "Disabled GENERAL MUSIC COMMANDS PACKAGE"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/play.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/leave.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skip.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/shuffle.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/loop.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/nowplaying.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/pause.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/queue.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/remove.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/resume.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skip.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skipall.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skipto.js
        mv play.js $A
        mv skip.js rm -f ./pjs/commands/music/skip.js
        mv shuffle.js rm -f ./pjs/commands/music/shuffle.js
        mv leave.js rm -f ./pjs/commands/music/leave.js
        mv loop.js rm -f ./pjs/commands/music/loop.js
        mv nowplaying.js rm -f ./pjs/commands/music/nowplaying.js
        mv pause.js rm -f ./pjs/commands/music/pause.js
        mv queue.js rm -f ./pjs/commands/music/queue.js
        mv remove.js rm -f ./pjs/commands/music/remove.js
        mv resume.js rm -f ./pjs/commands/music/resume.js
        mv skipall.js rm -f ./pjs/commands/music/skipall.js
        mv skipto.js rm -f ./pjs/commands/music/skipto.js
        echo "Enabled GENERAL MUSIC COMMANDS PACKAGE"
    fi
    pause
}
musictrivia() {
    if [ -f "$B" ]; then
        rm -f $B
        rm -f ./pjs/commands/music/stopmusictrivia.js
        echo "Disabled MUSIC TRIVIA COMMANDS PACKAGE"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/musictrivia.js
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/stopmusictrivia.js
        mv musictrivia.js $B
        mv stopmusictrivia.js $B
        echo "Enabled MUSIC TRIVIA COMMANDS PACKAGE"
    fi
    pause
}
volume() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled volume"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/volume.js
        mv volume.js $C
        echo "Enabled volume"
    fi
    pause
}
onoff() {
    if [ -f "$A" ]; then
        echo "GENERAL MUSIC COMMANDS PACKAGE is on"
    else
        echo "GENERAL MUSIC COMMANDS PACKAGE if off"
    fi

    if [ -f "$B" ]; then
        echo "MUSIC TRIVIA COMMANDS PACKAGE is on"
    else
        echo "MUSIC TRIVIA COMMANDS PACKAGE if off"
    fi

    if [ -f "$C" ]; then
        echo "volume is on"
    else
        echo "volume if off"
    fi
    pause
}
back() {
    rm -f music.sh
    exit 0
}
show_menuMUSIC() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - M U S I C"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "1. GENERAL MUSIC COMMANDS PACKAGE"
    echo "2. MUSIC TRIVIA COMMANDS PACKAGE"
    echo "3. volume"
    echo "4. Back"
    echo "?. What is On/Off"
}
read_optionsMUSIC() {
    local choicetwo
    read -p "Enter choice [ 1 - 4 ] " choicetwo
    case $choicetwo in
    1) play ;;
    2) musictrivia ;;
    3) volume ;;
    4) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuMUSIC
    read_optionsMUSIC
done
