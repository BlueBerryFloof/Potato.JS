pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
if [ -d "./pjs" ]; then
    rm -rf ./pjs
    rm -rf run.sh
else
    echo "P.JS is not installed or the directory has been renamed"
    pause
fi
