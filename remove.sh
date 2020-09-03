pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
if [ -d "./pjs" ]; then
    rm -r ./pjs
else
    echo "P.JS is not installed or the directory has been renamed"
    pause
fi
