const { Command } = require('discord.js-commando');
const { discord_owner_id } = require('../../config.json');
module.exports = class SayCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'ntd',
            aliases: ['note-to-dev', 'notetodev'],
            memberName: 'ntd',
            group: 'other',
            description: 'Send a note to the developer of the bot',
            args: [
                {
                    key: 'text',
                    prompt: 'What do you want to send to the dev?',
                    type: 'string'
                }
            ]
        });
    }

    async run(message, { text }) {
        let inData = message.client.users.fetch(discord_owner_id);
        let promise = Promise.resolve(inData);
        let userDataAndShit = await promise;
        console.info("-------------------------------------------------------------------------------------------------------------")
        console.info(message.author.username + "#" + message.author.discriminator + " aka " + message.author.id + " sent a note")
        console.info("> " + text)
        userDataAndShit.send(message.author.username + "#" + message.author.discriminator + " aka " + message.author.id + " sent a note" + "\n" + "> " + text);
        return message.say("You sent Blueberry#2336:\n > " + text + "\n" + "- <@" + message.author.id + ">");

    }
};
