VER="1.8.8~~"

ANIME=./pjs/commands/gifs/animegif.js
FURRY=./pjs/commands/gifs/furry.js
GIF=./pjs/commands/gifs/gif.js
GINTAMA=./pjs/commands/gifs/gintama.js
JOJO=./pjs/commands/gifs/jojo.js
pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
animegif() {
    if [ -f "$ANIME" ]; then
        echo "$ANIME exists."
    else
        echo "$ANIME does not exist."
    fi
    pause
}
furry() {
    if [ -f "$FURRY" ]; then
        echo "$FURRY exists."
    else
        echo "$FURRY does not exist."
    fi
    pause
}
gif() {
    if [ -f "$GIF" ]; then
        echo "$GIF exists."
    else
        echo "$GIF does not exist."
    fi
    pause
}
gintama() {
    if [ -f "$GINTAMA" ]; then
        echo "$GINTAMA exists."
    else
        echo "$GINTAMA does not exist."
    fi
    pause
}
jojo() {
    if [ -f "$JOJO" ]; then
        echo "$JOJO exists."
    else
        echo "$JOJO does not exist."
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
    *) echo -e "${RED}Error...${STD}" && sleep 2 ;;
    esac
}
while true; do
    show_menuGIFS
    read_optionsGIFS
done
