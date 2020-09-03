const fetch = require("node-fetch");
const { tenorAPI } = require("../../config.json");
const fs = require('fs');
const { Command } = require('discord.js-commando');

module.exports = class JojoCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'jojo',
      aliases: ['jojo-gif', 'jojo-gifs'],
      group: 'gifs',
      memberName: 'jojo',
      description: 'Replies with a random jojo gif!',
      throttling: {
        usages: 2,
        duration: 8
      }
    });
  }

  run(message) {
    try {
      fetch(
        `https://api.tenor.com/v1/random?key=${tenorAPI}&q=jojos-bizarre-adventure&limit=1`
      )
        .then(res => res.json())
        .then(json => message.say(json.results[0].url))
        .catch(e => {
          message.say('Failed to fetch a gif :slight_frown:');
          return console.error(e);
        })
    } catch (e) {
      message.say('Failed to fetch a gif :slight_frown:');
      return console.error(e);
    }
  }
};
