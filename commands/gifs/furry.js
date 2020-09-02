const fetch = require("node-fetch");
const { tenorAPI } = require("../../config.json");
const fs = require('fs');
const { Command } = require('discord.js-commando');

module.exports = class FurryCommand extends Command {
 constructor(client) {
   super(client, {
     name: 'furry',
     aliases: ['furry-gif', 'furry-gifs'],
     group: 'gifs',
     memberName: 'furry',
     description: 'Replies with a random furry gif!',
     throttling: {
       usages: 2,
       duration: 8
     }
   });
 }

 run(message) {
   try {
     
     const linkArray = fs
       .readFileSync('resources/gifs/furrylinks.txt', 'utf8')
       .split('\n');
     const link = linkArray[Math.floor(Math.random() * linkArray.length)];
     return message.say(link);
    /*
     fetch(
       `https://api.tenor.com/v1/random?key=${tenorAPI}&q=jojos-bizarre-adventure&limit=1`
     )
       .then(res => res.json())
       .then(json => message.say(json.results[0].url))
       .catch(e => {
         message.say('Failed to fetch a gif :slight_frown:');
         return console.error(e);
       })
    */
   } catch (e) {
     message.say('Failed to fetch a gif :slight_frown:');
     return console.error(e);
   }
 }
};
