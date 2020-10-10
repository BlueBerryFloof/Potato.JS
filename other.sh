PONE=$(sed -n 1p menu.sh)
PTWO=$(echo "${PONE}" | sed -r 's/^.{5}//')
VER=$(echo "${PTWO}" | rev | cut -c2- | rev)
# VER="1.8.8~~"
A=./pjs/commands/other/cat.js
B=./pjs/commands/other/chucknorris.js
C=./pjs/commands/other/fortune.js
D=./pjs/commands/other/insult.js
E=./pjs/commands/other/meme.js
F=./pjs/commands/other/motivation.js
G=./pjs/commands/other/ntd.js
H=./pjs/commands/other/quotethat.js
I=./pjs/commands/other/random.js
J=./pjs/commands/other/reddit.js
K=./pjs/commands/other/reminder.js
L=./pjs/commands/other/say.js
M=./pjs/commands/other/uptime.js
N=./pjs/commands/other/whomademe.js
O=./pjs/commands/other/world-news.js
P=./pjs/commands/other/ynet-news.js

pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
cat() {
    if [ -f "$A" ]; then
        rm -f $A
        echo "Disabled cat"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/cat.js
        mv cat.js $A
        echo "Enabled cat"
    fi
    pause
}
chucknorris() {
    if [ -f "$B" ]; then
        rm -f $B
        echo "Disabled chucknorris"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/chucknorris.js
        mv chucknorris.js $B
        echo "Enabled chucknorris"
    fi
    pause
}
fortune() {
    if [ -f "$C" ]; then
        rm -f $C
        echo "Disabled fortune"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/fortune.js
        mv fortune.js $C
        echo "Enabled fortune"
    fi
    pause
}
insult() {
    if [ -f "$D" ]; then
        rm -f $D
        echo "Disabled insult"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/insult.js
        mv insult.js $D
        echo "Enabled insult"
    fi
    pause
}
meme() {
    if [ -f "$E" ]; then
        rm -f $E
        echo "Disabled meme"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/meme.js
        mv meme.js $E
        echo "Enabled meme"
    fi
    pause
}
motivation() {
    if [ -f "$F" ]; then
        rm -f $F
        echo "Disabled motivation"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/motivation.js
        mv motivation.js $F
        echo "Enabled motivation"
    fi
    pause
}
ntd() {
    if [ -f "$G" ]; then
        rm -f $G
        echo "Disabled ntd"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/ntd.js
        mv ntd.js $G
        echo "Enabled ntd"
    fi
    pause
}
quotethat() {
    if [ -f "$H" ]; then
        rm -f $H
        echo "Disabled quotethat"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/quotethat.js
        mv quotethat.js $H
        echo "Enabled quotethat"
    fi
    pause
}
random() {
    if [ -f "$I" ]; then
        rm -f $I
        echo "Disabled random"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/random.js
        mv random.js $I
        echo "Enabled random"
    fi
    pause
}
reddit() {
    if [ -f "$J" ]; then
        rm -f $J
        echo "Disabled reddit"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/reddit.js
        mv reddit.js $J
        echo "Enabled reddit"
    fi
    pause
}
reminder() {
    if [ -f "$K" ]; then
        rm -f $K
        echo "Disabled reminder"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/reminder.js
        mv reminder.js $K
        echo "Enabled reminder"
    fi
    pause
}
say() {
    if [ -f "$L" ]; then
        rm -f $L
        echo "Disabled say"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/say.js
        mv say.js $L
        echo "Enabled say"
    fi
    pause
}
uptime() {
    if [ -f "$M" ]; then
        rm -f $M
        echo "Disabled uptime"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/uptime.js
        mv uptime.js $M
        echo "Enabled uptime"
    fi
    pause
}
whomademe() {
    if [ -f "$N" ]; then
        rm -f $N
        echo "Disabled whomademe"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/whomademe.js
        mv whomademe.js $N
        echo "Enabled whomademe"
    fi
    pause
}
worldnews() {
    if [ -f "$O" ]; then
        rm -f $O
        echo "Disabled world-news"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/world-news.js
        mv world-news.js $O
        echo "Enabled world-news"
    fi
    pause
}
ynetnews() {
    if [ -f "$P" ]; then
        rm -f $P
        echo "Disabled ynet-news"
    else
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/ynet-news.js
        mv ynet-news.js $P
        echo "Enabled ynet-news"
    fi
    pause
}

onoff() {
    if [ -f "$A" ]; then
        echo "cat is on"
    else
        echo "cat if off"
    fi

    if [ -f "$B" ]; then
        echo "chucknorris is on"
    else
        echo "chucknorris if off"
    fi

    if [ -f "$C" ]; then
        echo "fortune is on"
    else
        echo "fortune if off"
    fi

    if [ -f "$D" ]; then
        echo "insult is on"
    else
        echo "insult if off"
    fi

    if [ -f "$E" ]; then
        echo "meme is on"
    else
        echo "meme if off"
    fi

    if [ -f "$F" ]; then
        echo "motivation is on"
    else
        echo "motivation if off"
    fi

    if [ -f "$G" ]; then
        echo "ntd is on"
    else
        echo "ntd if off"
    fi

    if [ -f "$H" ]; then
        echo "quotethat is on"
    else
        echo "quotethat if off"
    fi

    if [ -f "$I" ]; then
        echo "random is on"
    else
        echo "random if off"
    fi

    if [ -f "$J" ]; then
        echo "reddit is on"
    else
        echo "reddit if off"
    fi

    if [ -f "$K" ]; then
        echo "reminder is on"
    else
        echo "reminder if off"
    fi

    if [ -f "$L" ]; then
        echo "say is on"
    else
        echo "say if off"
    fi

    if [ -f "$M" ]; then
        echo "uptime is on"
    else
        echo "uptime if off"
    fi

    if [ -f "$N" ]; then
        echo "whomademe is on"
    else
        echo "whomademe if off"
    fi

    if [ -f "$O" ]; then
        echo "world-news is on"
    else
        echo "world-news if off"
    fi

    if [ -f "$P" ]; then
        echo "ynet-news is on"
    else
        echo "ynet-news if off"
    fi

    pause
}

reset() {
    if [ ! -f "$A" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/cat.js
        mv cat.js $A
    fi

    if [ ! -f "$B" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/chucknorris.js
        mv chucknorris.js $B
    fi

    if [ ! -f "$C" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/fortune.js
        mv fortune.js $C
    fi

    if [ ! -f "$D" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/insult.js
        mv insult.js $D
    fi

    if [ ! -f "$E" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/meme.js
        mv meme.js $E
    fi

    if [ ! -f "$F" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/motivation.js
        mv motivation.js $F
    fi

    if [ ! -f "$G" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/ntd.js
        mv ntd.js $G
    fi

    if [ ! -f "$H" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/quotethat.js
        mv quotethat.js $H
    fi

    if [ ! -f "$I" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/random.js
        mv random.js $I
    fi

    if [ ! -f "$J" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/reddit.js
        mv reddit.js $J
    fi

    if [ ! -f "$K" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/reminder.js
        mv reminder.js $K
    fi

    if [ ! -f "$L" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/say.js
        mv say.js $L
    fi

    if [ ! -f "$M" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/uptime.js
        mv uptime.js $M
    fi

    if [ ! -f "$N" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/whomademe.js
        mv whomademe.js $N
    fi

    if [ ! -f "$O" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/world-news.js
        mv world-news.js $O
    fi

    if [ ! -f "$P" ]; then
        wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/master/commands/other/ynet-news.js
        mv ynet-news.js $P
    fi

    echo "All commands reset"
    pause
}

back() {
    rm -f other.sh
    exit 0
}
show_menuOTHER() {
    clear
    echo "~V${VER}~~~~~~~~~~~~~~~~~~~~~~"
    echo " P O T A T O . J S - O T H E R"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "a. cat"
    echo "b. chucknorris"
    echo "c. fortune"
    echo "d. insult"
    echo "e. meme"
    echo "f. motivation"
    echo "g. ntd"
    echo "h. quotethat"
    echo "i. random"
    echo "j. reddit"
    echo "k. reminder"
    echo "l. say"
    echo "m. uptime"
    echo "n. whomademe"
    echo "o. world-news"
    echo "p. ynet-news"
    echo "R. Reset All to On"
    echo "!. Back"
    echo "?. What is On/Off"
}
read_optionsOTHER() {
    local choicetwo
    read -p "Enter choice [ a - p ] " choicetwo
    case $choicetwo in
    a) cat ;;
    b) chucknorris ;;
    c) fortune ;;
    d) insult ;;
    e) meme ;;
    f) motivation ;;
    g) ntd ;;
    h) quotethat ;;
    i) random ;;
    j) reddit ;;
    k) reminder ;;
    l) say ;;
    m) uptime ;;
    n) whomademe ;;
    o) worldnews ;;
    p) ynetnews ;;
    R) reset ;;
    !) back ;;
    ?) onoff ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuOTHER
    read_optionsOTHER
done
rm -f other.sh
