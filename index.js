const { CommandoClient } = require('discord.js-commando');
const { Structures } = require('discord.js');
const path = require('path');
const { prefix, support, token, discord_owner_id } = require('./config.json');
Structures.extend('Guild', function(Guild) {
  class MusicGuild extends Guild {
    constructor(client, data) {
      super(client, data);
      this.musicData = {
        queue: [],
        isPlaying: false,
        nowPlaying: null,
        songDispatcher: null,
        volume: 1
      };
      this.triviaData = {
        isTriviaRunning: false,
        wasTriviaEndCalled: false,
        triviaQueue: [],
        triviaScore: new Map()
      };
    }
  }
  return MusicGuild;
});

const client = new CommandoClient({
  commandPrefix: prefix,
  owner: discord_owner_id, // value comes from config.json
  invite: support
});

client.registry
  .registerDefaultTypes()
  .registerGroups([
    ['music', 'Music Command Group'],
    ['gifs', 'Gif Command Group'],
    ['other', 'random types of commands group'],
    ['guild', 'guild related commands'],
    ['owner', 'bot owner only']
  ])
  .registerDefaultGroups()
  .registerDefaultCommands({
    eval: false,
    prefix: true,
    commandState: false
  })
  .registerCommandsIn(path.join(__dirname, 'commands'));

client.once('ready', () => {
  console.log('Ready!');
  client.user.setActivity(`${prefix}help`, {
    type: 'WATCHING',
    url: 'http://blueberry.schutte.net'
  });
});

client.on('voiceStateUpdate', async (___, newState) => {
  if (
    newState.member.user.bot &&
    !newState.channelID &&
    newState.guild.musicData.songDispatcher &&
    newState.member.user.id == client.user.id
  ) {
    newState.guild.musicData.queue.length = 0;
    newState.guild.musicData.songDispatcher.end();
  }
});

client.on('guildMemberAdd', member => {
  const channel = member.guild.channels.cache.find(ch => ch.name === 'general'); // change this to the channel name you want to send the greeting to
  if (!channel) return;
  channel.send(`Hello ${member}!`);
});

var stattime = 3600000;
function reminder() {
  client.user.setActivity(`${prefix}help`, {
    type: 'WATCHING',
    url: 'http://blueberry.schutte.net'
  });
  console.log('stat set')
  setTimeout(reminder, stattime);
}

setTimeout(reminder, stattime);

client.login(token);
