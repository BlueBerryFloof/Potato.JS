const { Command } = require('discord.js-commando');
const { discord_owner_id } = require('../../config.json');
module.exports = class WhoMadeMeCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'whomademe',
      aliases: ['bot-maker', 'bot-creator'],
      memberName: 'whomademe',
      group: 'other',
      description: "Replies with the bot creator's name"
    });
  }

  run(message) {
    let inData = message.client.users.fetch(discord_owner_id);
    let promise = Promise.resolve(inData);
    let userDataAndShit = await promise;
    message.say(
      'Made by ' + userDataAndShit.username + '#' + userDataAndShit.discriminator + ' with :heart:'
    );
  }
};
