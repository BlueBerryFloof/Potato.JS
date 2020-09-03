pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
FILE1=./menu.sh
if [ -f "$FILE1" ]; then
    rm $FILE1
fi
FILE2=./enable.sh
if [ -f "$FILE2" ]; then
    rm $FILE2
fi
FILE3=./disable.sh
if [ -f "$FILE3" ]; then
    rm $FILE3
fi
FILE4=./rebuild.sh
if [ -f "$FILE4" ]; then
    rm $FILE4
fi
FILE5=./update.sh
if [ -f "$FILE5" ]; then
    rm $FILE5
fi
FILE6=./remove.sh
if [ -f "$FILE6" ]; then
    rm $FILE6
fi
sleep 2
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/menu.sh
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/enable.sh
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/disable.sh
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/rebuild.sh
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/remove.sh
wget -nv --show-progress https://raw.githubusercontent.com/BlueBerryFloof/Potato.JS/Installer/update.sh
sleep 2
sh menu.sh
