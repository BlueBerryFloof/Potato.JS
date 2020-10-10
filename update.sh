pause() {
    read -p "Press [Enter] key to continue..." fackEnterKey
}

aA=./pjs/commands/gifs/animegif.js
aB=./pjs/commands/gifs/furry.js
aC=./pjs/commands/gifs/gif.js
aD=./pjs/commands/gifs/gintama.js
aE=./pjs/commands/gifs/jojo.js

oA=./pjs/commands/other/cat.js
oB=./pjs/commands/other/chucknorris.js
oC=./pjs/commands/other/fortune.js
oD=./pjs/commands/other/insult.js
oE=./pjs/commands/other/meme.js
oF=./pjs/commands/other/motivation.js
oG=./pjs/commands/other/ntd.js
oH=./pjs/commands/other/quotethat.js
oI=./pjs/commands/other/random.js
oJ=./pjs/commands/other/reddit.js
oK=./pjs/commands/other/reminder.js
oL=./pjs/commands/other/say.js
oM=./pjs/commands/other/uptime.js
oN=./pjs/commands/other/whomademe.js
oO=./pjs/commands/other/world-news.js
oP=./pjs/commands/other/ynet-news.js

mA=./pjs/commands/music/leave.js
mB=./pjs/commands/music/loop.js
mC=./pjs/commands/music/musictriviaia.js
mD=./pjs/commands/music/nowplaying.js
mE=./pjs/commands/music/pause.js
mF=./pjs/commands/music/play.js
mG=./pjs/commands/music/queue.js
mH=./pjs/commands/music/remove.js
mI=./pjs/commands/music/resume.js
mJ=./pjs/commands/music/shuffle.js
mK=./pjs/commands/music/skip.js
mL=./pjs/commands/music/skipall.js
mM=./pjs/commands/music/skipto.js
mN=./pjs/commands/music/stopmusictriviaia.js
mO=./pjs/commands/music/volume.js

wA=./pjs/commands/owner/announce.js
wB=./pjs/commands/owner/kill.js
wC=./pjs/commands/owner/statfix.js

gA=./pjs/commands/guild/ban.js
gB=./pjs/commands/guild/kick.js
gC=./pjs/commands/guild/prune.js

git clone https://github.com/BlueBerryFloof/Potato.JS.git
rm -rf ./Potato.JS/config.json
rm -rf ./Potato.JS/potato

# ! GIFS Start
if [ -f "$aA" ]; then
    mv -fv ./Potato.JS/commands/gifs/anime.js $aA
else
    rm -rf ./Potato.JS/commands/gifs/anime.js
fi

if [ -f "$aB" ]; then
    mv -fv ./Potato.JS/commands/gifs/furry.js $aB
else
    rm -rf ./Potato.JS/commands/gifs/furry.js
fi

if [ -f "$aC" ]; then
    mv -fv ./Potato.JS/commands/gifs/gif.js $aC
else
    rm -rf ./Potato.JS/commands/gifs/gif.js
fi

if [ -f "$aD" ]; then
    mv -fv ./Potato.JS/commands/gifs/gintama.js $aD
else
    rm -rf ./Potato.JS/commands/gifs/gintama.js
fi

if [ -f "$aE" ]; then
    mv -fv ./Potato.JS/commands/gifs/jojo.js $aE
else
    rm -rf ./Potato.JS/commands/gifs/jojo.js
fi

# ! Guild Start
if [ -f "$gA" ]; then
    mv -fv ./Potato.JS/commands/guild/ban.js $gA
else
    rm -rf ./Potato.JS/commands/guild/ban.js
fi

if [ -f "$gB" ]; then
    mv -fv ./Potato.JS/commands/guild/kick.js $gB
else
    rm -rf ./Potato.JS/commands/guild/kick.js
fi

if [ -f "$gC" ]; then
    mv -fv ./Potato.JS/commands/guild/prune.js $gC
else
    rm -rf ./Potato.JS/commands/guild/prune.js
fi

# ! Owner Start
if [ -f "$wA" ]; then
    mv -fv ./Potato.JS/commands/owner/announce.js $wA
else
    rm -rf ./Potato.JS/commands/owner/announce.js
fi

if [ -f "$wB" ]; then
    mv -fv ./Potato.JS/commands/owner/kill.js $wB
else
    rm -rf ./Potato.JS/commands/owner/kill.js
fi

if [ -f "$wC" ]; then
    mv -fv ./Potato.JS/commands/owner/statfix.js $wC
else
    rm -rf ./Potato.JS/commands/owner/statfix.js
fi

# ! Other Start
if [ -f "$oA" ]; then
    mv -fv ./Potato.JS/commands/other/cat.js $oA
else
    rm -rf ./Potato.JS/commands/other/cat.js
fi

if [ -f "$oB" ]; then
    mv -fv ./Potato.JS/commands/other/chucknorris.js $oB
else
    rm -rf ./Potato.JS/commands/other/chucknorris.js
fi

if [ -f "$oC" ]; then
    mv -fv ./Potato.JS/commands/other/fortune.js $oC
else
    rm -rf ./Potato.JS/commands/other/fortune.js
fi

if [ -f "$oD" ]; then
    mv -fv ./Potato.JS/commands/other/insult.js $oD
else
    rm -rf ./Potato.JS/commands/other/insult.js
fi

if [ -f "$oE" ]; then
    mv -fv ./Potato.JS/commands/other/meme.js $oE
else
    rm -rf ./Potato.JS/commands/other/meme.js
fi

if [ -f "$oF" ]; then
    mv -fv ./Potato.JS/commands/other/motivation.js $oF
else
    rm -rf ./Potato.JS/commands/other/motivation.js
fi

if [ -f "$oG" ]; then
    mv -fv ./Potato.JS/commands/other/ntd.js $oG
else
    rm -rf ./Potato.JS/commands/other/ntd.js
fi

if [ -f "$oH" ]; then
    mv -fv ./Potato.JS/commands/other/quotethat.js $oH
else
    rm -rf ./Potato.JS/commands/other/quotethat.js
fi

if [ -f "$oI" ]; then
    mv -fv ./Potato.JS/commands/other/random.js $oI
else
    rm -rf ./Potato.JS/commands/other/random.js
fi

if [ -f "$oJ" ]; then
    mv -fv ./Potato.JS/commands/other/reddit.js $oJ
else
    rm -rf ./Potato.JS/commands/other/reddit.js
fi

if [ -f "$oK" ]; then
    mv -fv ./Potato.JS/commands/other/reminder.js $oK
else
    rm -rf ./Potato.JS/commands/other/reminder.js
fi

if [ -f "$oL" ]; then
    mv -fv ./Potato.JS/commands/other/say.js $oL
else
    rm -rf ./Potato.JS/commands/other/say.js
fi

if [ -f "$oM" ]; then
    mv -fv ./Potato.JS/commands/other/uptime.js $oM
else
    rm -rf ./Potato.JS/commands/other/uptime.js
fi

if [ -f "$oN" ]; then
    mv -fv ./Potato.JS/commands/other/whomademe.js $oN
else
    rm -rf ./Potato.JS/commands/other/whomademe.js
fi

if [ -f "$oO" ]; then
    mv -fv ./Potato.JS/commands/other/world-news.js $oO
else
    rm -rf ./Potato.JS/commands/other/world-news.js
fi

if [ -f "$oP" ]; then
    mv -fv ./Potato.JS/commands/other/ynet-news.js $oP
else
    rm -rf ./Potato.JS/commands/other/ynet-news.js
fi

# ! Music Starts
if [ -f "$mA" ]; then
    mv -fv ./Potato.JS/commands/music/leave.js $mA
else
    rm -rf ./Potato.JS/commands/music/leave.js
fi

if [ -f "$mB" ]; then
    mv -fv ./Potato.JS/commands/music/loop.js $mB
else
    rm -rf ./Potato.JS/commands/music/loop.js
fi

if [ -f "$mC" ]; then
    mv -fv ./Potato.JS/commands/music/musictrivia.js $mC
else
    rm -rf ./Potato.JS/commands/music/musictrivia.js
fi

if [ -f "$mD" ]; then
    mv -fv ./Potato.JS/commands/music/nowplaying.js $mD
else
    rm -rf ./Potato.JS/commands/music/nowplaying.js
fi

if [ -f "$mE" ]; then
    mv -fv ./Potato.JS/commands/music/pause.js $mE
else
    rm -rf ./Potato.JS/commands/music/pause.js
fi

if [ -f "$mF" ]; then
    mv -fv ./Potato.JS/commands/music/play.js $mF
else
    rm -rf ./Potato.JS/commands/music/play.js
fi

if [ -f "$mG" ]; then
    mv -fv ./Potato.JS/commands/music/queue.js $mG
else
    rm -rf ./Potato.JS/commands/music/queue.js
fi

if [ -f "$mH" ]; then
    mv -fv ./Potato.JS/commands/music/remove.js $mH
else
    rm -rf ./Potato.JS/commands/music/remove.js
fi

if [ -f "$mI" ]; then
    mv -fv ./Potato.JS/commands/music/resume.js $mI
else
    rm -rf ./Potato.JS/commands/music/resume.js
fi

if [ -f "$mJ" ]; then
    mv -fv ./Potato.JS/commands/music/shuffle.js $mJ
else
    rm -rf ./Potato.JS/commands/music/shuffle.js
fi

if [ -f "$mK" ]; then
    mv -fv ./Potato.JS/commands/music/skip.js $mK
else
    rm -rf ./Potato.JS/commands/music/skip.js
fi

if [ -f "$mL" ]; then
    mv -fv ./Potato.JS/commands/music/skipall.js $mL
else
    rm -rf ./Potato.JS/commands/music/skipall.js
fi

if [ -f "$mM" ]; then
    mv -fv ./Potato.JS/commands/music/skipto.js $mM
else
    rm -rf ./Potato.JS/commands/music/skipto.js
fi

if [ -f "$mN" ]; then
    mv -fv ./Potato.JS/commands/music/stopmusictrivia.js $mN
else
    rm -rf ./Potato.JS/commands/music/stopmusictrivia.js
fi

if [ -f "$mO" ]; then
    mv -fv ./Potato.JS/commands/music/volume.js $mO
else
    rm -rf ./Potato.JS/commands/music/volume.js
fi

mv -fv ./Potato.JS/resources/gifs/* ./pjs/resources/gifs
mv -fv ./Potato.JS/resources/music/* ./pjs/resources/music
mv -fv ./Potato.JS/resources/quotes/* ./pjs/resources/quotes
cd ./pjs
npm i
npm audit fix
cd ../
rm -rf Potato.JS
pause

rm -f update.sh
