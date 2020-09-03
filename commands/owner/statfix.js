const { Command } = require('discord.js-commando');
const { discord_owner_id, prefix } = require('../../config.json');
module.exports = class RebootCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'statfix',
            memberName: 'statfix',
            group: 'owner',
            description: 'Owner only command',
            args: [
                {
                    key: 'text',
                    prompt: 'What should the bot status be',
                    type: 'string',
                    validate: text => text.length < 128
                }
            ]
        });
    }

    run(message, { text }) {
        if (message.author == discord_owner_id) {
            if (text == '!reset') {
                message.client.user.setActivity(`${prefix}help`, {
                    type: 'WATCHING',
                    url: 'http://blueberry.schutte.net'
                });
                message.say('Activity Status Reset')
            } else {
                message.client.user.setActivity(`${text}`, {
                    type: 'WATCHING',
                    url: 'http://blueberry.schutte.net'
                });
                message.say('Activity Status set to ' + text)
            }
        } else {
            message.client.user.setActivity(`${prefix}help`, {
                type: 'WATCHING',
                url: 'http://blueberry.schutte.net'
            });
            message.say('Activity Status Reset')
            return message.say(
                'You do not have the permissions change the status from its default.'
            );
        }
    }
};
