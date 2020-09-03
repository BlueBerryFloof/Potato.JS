const fetch = require("node-fetch");
const { tenorAPI } = require("../../config.json");
const fs = require('fs');
const { Command } = require('discord.js-commando');

module.exports = class GintamaCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'gintama',
      group: 'gifs',
      memberName: 'gintama',
      description: 'Replies with a gintama gif!',
      throttling: {
        usages: 2,
        duration: 8
      }
    });
  }

  run(message) {
    try {
      fetch(
        `https://api.tenor.com/v1/random?key=${tenorAPI}&q=gintama&limit=1`
      )
        .then(res => res.json())
        .then(json => message.say(json.results[0].url))
        .catch(e => {
          message.say('Failed to fetch a gintama gif :slight_frown:');
          return console.error(e);
        })
    } catch (e) {
      message.say('Failed to fetch a gintama gif :slight_frown:');
      return console.error(e);
    }
  }
};
