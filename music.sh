PONE=$(sed -n 1p menu.sh)
PTWO=$(echo "${PONE}" | sed -r 's/^.{5}//')
VER=$(echo "${PTWO}" | rev | cut -c2- | rev)
# VER="1.8.8~~"
if [ 1 -eq 0 ]; then
    A=./pjs/commands/music/play.js
    B=./pjs/commands/music/musictrivia.js
    C=./pjs/commands/music/volume.js

    hold() {
        read -p "Press [Enter] key to continue..." fackEnterKey
    }
    GMCP() {
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
        hold
    }
    MTCP() {
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
        hold
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
        hold
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
        hold
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
        echo "!. Back"
        echo "?. What is On/Off"
    }
    read_optionsMUSIC() {
        local choicetwo
        read -p "Enter choice [ 1 - 4 ] " choicetwo
        case $choicetwo in
        1) GMCP ;;
        2) MTCP ;;
        3) volume ;;
        !) back ;;
        ?) onoff ;;
        *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
        esac
    }
    while true; do
        show_menuMUSIC
        read_optionsMUSIC
    done
fi

A=./pjs/commands/music/leave.js
B=./pjs/commands/music/loop.js
C=./pjs/commands/music/musictrivia.js
D=./pjs/commands/music/nowplaying.js
E=./pjs/commands/music/pause.js
F=./pjs/commands/music/play.js
G=./pjs/commands/music/queue.js
H=./pjs/commands/music/remove.js
I=./pjs/commands/music/resume.js
J=./pjs/commands/music/shuffle.js
K=./pjs/commands/music/skip.js
L=./pjs/commands/music/skipall.js
M=./pjs/commands/music/skipto.js
N=./pjs/commands/music/stopmusictrivia.js
O=./pjs/commands/music/volume.js

hold() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
leave() {
    if [ -f "$A" ]; then
        rm -f $A
        echo "Disabled leave"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/leave.js
        mv leave.js $A
        echo "Enabled leave"
    fi
    hold
}
loop() {
    if [ -f "$B" ]; then
        rm -f $B
        echo "Disabled loop"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/loop.js
        mv loop.js $B
        echo "Enabled loop"
    fi
    hold
}
musictrivia() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled musictrivia"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/musictrivia.js
        mv musictrivia.js $C
        echo "Enabled musictrivia"
    fi
    hold
}
nowplaying() {
    if [ -f "$D" ]; then
        rm -f $D
        echo "Disabled nowplaying"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/nowplaying.js
        mv nowplaying.js $D
        echo "Enabled nowplaying"
    fi
    hold
}
pause() {
    if [ -f "$E" ]; then
        rm -f $E
        echo "Disabled pause"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/pause.js
        mv pause.js $E
        echo "Enabled pause"
    fi
    hold
}
play() {
    if [ -f "$F" ]; then
        rm -f $F
        echo "Disabled play"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/play.js
        mv play.js $F
        echo "Enabled play"
    fi
    hold
}
queue() {
    if [ -f "$G" ]; then
        rm -f $G
        echo "Disabled queue"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/queue.js
        mv queue.js $G
        echo "Enabled queue"
    fi
    hold
}
remove() {
    if [ -f "$H" ]; then
        rm -f $H
        echo "Disabled remove"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/remove.js
        mv remove.js $H
        echo "Enabled remove"
    fi
    hold
}
resume() {
    if [ -f "$I" ]; then
        rm -f $I
        echo "Disabled resume"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/resume.js
        mv resume.js $I
        echo "Enabled resume"
    fi
    hold
}
shuffle() {
    if [ -f "$J" ]; then
        rm -f $J
        echo "Disabled shuffle"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/shuffle.js
        mv shuffle.js $J
        echo "Enabled shuffle"
    fi
    hold
}
skip() {
    if [ -f "$K" ]; then
        rm -f $K
        echo "Disabled skip"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skip.js
        mv skip.js $K
        echo "Enabled skip"
    fi
    hold
}
skipall() {
    if [ -f "$L" ]; then
        rm -f $L
        echo "Disabled skipall"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skipall.js
        mv skipall.js $L
        echo "Enabled skipall"
    fi
    hold
}
skipto() {
    if [ -f "$M" ]; then
        rm -f $M
        echo "Disabled skipto"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/skipto.js
        mv skipto.js $M
        echo "Enabled skipto"
    fi
    hold
}
stopmusictrivia() {
    if [ -f "$N" ]; then
        rm -f $N
        echo "Disabled stopmusictrivia"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/stopmusictrivia.js
        mv stopmusictrivia.js $N
        echo "Enabled stopmusictrivia"
    fi
    hold
}
volume() {
    if [ -f "$O" ]; then
        rm -f $O
        echo "Disabled volume"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/music/volume.js
        mv volume.js $O
        echo "Enabled volume"
    fi
    hold
}

onoff() {
    if [ -f "$A" ]; then
        echo "leave is on"
    else
        echo "leave if off"
    fi

    if [ -f "$B" ]; then
        echo "loop is on"
    else
        echo "loop if off"
    fi

    if [ -f "$C" ]; then
        echo "musictrivia is on"
    else
        echo "musictrivia if off"
    fi

    if [ -f "$D" ]; then
        echo "nowplaying is on"
    else
        echo "nowplaying if off"
    fi

    if [ -f "$E" ]; then
        echo "pause is on"
    else
        echo "pause if off"
    fi

    if [ -f "$F" ]; then
        echo "play is on"
    else
        echo "play if off"
    fi
    
    if [ -f "$G" ]; then
        echo "queue is on"
    else
        echo "queue if off"
    fi
    
    if [ -f "$H" ]; then
        echo "remove is on"
    else
        echo "remove if off"
    fi
    
    if [ -f "$I" ]; then
        echo "resume is on"
    else
        echo "resume if off"
    fi
    
    if [ -f "$J" ]; then
        echo "shuffle is on"
    else
        echo "shuffle if off"
    fi
    
    if [ -f "$K" ]; then
        echo "skip is on"
    else
        echo "skip if off"
    fi
    
    if [ -f "$L" ]; then
        echo "skipall is on"
    else
        echo "skipall if off"
    fi
    
    if [ -f "$M" ]; then
        echo "skipto is on"
    else
        echo "skipto if off"
    fi
    
    if [ -f "$N" ]; then
        echo "stopmusictrivia is on"
    else
        echo "stopmusictrivia if off"
    fi
    
    if [ -f "$O" ]; then
        echo "volume is on"
    else
        echo "volume if off"
    fi
    
    hold
}

back() {
    rm -f music.sh
    exit 0
}
show_menumusic() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - M U S I C"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "a. leave"
    echo "b. loop"
    echo "c. musictrivia"
    echo "d. nowplaying"
    echo "e. pause"
    echo "f. play"
    echo "g. queue"
    echo "h. remove"
    echo "i. resume"
    echo "j. shuffle"
    echo "k. skip"
    echo "l. skipall"
    echo "m. skipto"
    echo "n. stopmusictrivia"
    echo "o. volume"
    echo "!. Back"
    echo "?. What is On/Off"
}
read_optionsmusic() {
    local choicetwo
    read -p "Enter choice [ a - p ] " choicetwo
    case $choicetwo in
    a) leave ;;
    b) loop ;;
    c) musictrivia ;;
    d) nowplaying ;;
    e) pause ;;
    f) play ;;
    g) queue ;;
    h) remove ;;
    i) resume ;;
    j) shuffle ;;
    k) skip ;;
    l) skipall ;;
    m) skipto ;;
    n) stopmusictrivia ;;
    o) volume ;;
    !) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menumusic
    read_optionsmusic
done
rm -f music.sh