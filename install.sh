DEP_ONE=$(which git)
DEP_TWO=$(which npm)
DEP_THREE=$(which node)
pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
if [ -z "$DEP_ONE" ]; then
    echo "Missing git please install and try again"
    pause
    exit 0
fi
if [ -z "$DEP_TWO" ]; then
    echo "Missing npm please install and try again"
    pause
    exit 0
fi
if [ -z "$DEP_THREE" ]; then
    echo "Missing node please install and try again"
    pause
    exit 0
fi
git clone https://github.com/BlueBerryFloof/Potato.JS.git
mv ./Potato.JS ./pjs
cd ./pjs
npm i
cd ../
rm ./pjs/QI.sh
echo "echo 'Starting Bot!'" >run.sh
echo "node index.js" >run.sh
echo "Bot Run File Made"