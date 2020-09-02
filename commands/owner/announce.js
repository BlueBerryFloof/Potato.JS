const { Command } = require('discord.js-commando');
const { discord_owner_id } = require('../../config.json');
module.exports = class SayCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'announce',
            aliases: ['sayraw', 'raw'],
            memberName: 'announce',
            group: 'owner',
            description: 'Owner only command',
            args: [
                {
                    key: 'text',
                    prompt: 'What do you want the bot to say?',
                    type: 'string'
                }
            ]
        });
    }

    run(message, { text }) {
        if (message.author == discord_owner_id) {
            message.channel.bulkDelete(1)
            return message.say(text);
        } else {
            return message.say(
                'You do not have the permissions to do this action'
            );
        }
    }
};
