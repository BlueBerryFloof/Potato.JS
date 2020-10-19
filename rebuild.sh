rm -f pjs/config.json
pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}
PREFIX=' '
OWNER=' '
BOT=' '
TENOR=' '
NEWS=' '
YOUTUBE=' '
echo "{" >>config.json
read -p "Prefix of Choice: " PREFIX
sleep 1
echo '    "prefix": "'${PREFIX}'"' >>config.json

read -p "What is the Bot Owner's ID: " OWNER
sleep 1
echo '    "discord_owner_id": "'${OWNER}'"' >>config.json

read -p "What is the Bot's ID: " BOT
sleep 1
echo '    "bot_id": "'${BOT}'"' >>config.json

read -p "What is the Discord Server's Invite link: " SUPPORT
sleep 1
echo '    "support": "'${SUPPORT}'"' >>config.json

read -p "TenorAPI Key (Get one at: https://tenor.com/developer/keyregistration ): " TENOR
sleep 1
echo '    "tenorAPI": "'${TENOR}'"' >>config.json

read -p "NewsAPI Key (Get one at: https://newsapi.org/ ): " NEWS
sleep 1
echo '    "newsAPI": "'${NEWS}'"' >>config.json

read -p "YouTube API Key (Get one at: https://tinyurl.com/YoutubeAPIKey ): " YOUTUBE
sleep 1
echo '    "youtubeAPI": "'${YOUTUBE}'"' >>config.json

echo "}" >>config.json
mv config.json ./pjs/config.json
echo "Config Made"
pause
rm -f rebuild.sh