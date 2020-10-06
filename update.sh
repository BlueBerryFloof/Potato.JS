pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}
git clone https://github.com/BlueBerryFloof/Potato.JS.git
rm -rf ./Potato.JS/config.json
mv -fv ./Potato.JS/* ./pjs
mv -fv ./Potato.JS/commands/gifs* ./pjs/commands/gifs
mv -fv ./Potato.JS/commands/guild* ./pjs/commands/guild
mv -fv ./Potato.JS/commands/music* ./pjs/commands/music
mv -fv ./Potato.JS/commands/other* ./pjs/commands/other
mv -fv ./Potato.JS/commands/owner* ./pjs/commands/owner
mv -fv ./Potato.JS/resources/gifs* ./pjs/resources/gifs
mv -fv ./Potato.JS/resources/music* ./pjs/resources/music
mv -fv ./Potato.JS/resources/quotes* ./pjs/resources/quotes
cd ./pjs
npm i
cd ../
rm -rf Potato.JS

echo "Please reconfig what is enabled and isn't."
echo "This needs work but im too lazy to do it"
pause

rm -f update.sh