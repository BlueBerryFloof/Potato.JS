const { Command } = require('discord.js-commando');
const { discord_owner_id } = require('../../config.json');
module.exports = class RebootCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'kill',
            memberName: 'kill',
            group: 'owner',
            description: 'Owner only command',
        });
    }

    run(message, { text }) {
        if (message.author == discord_owner_id) {
            process.exit(1);
        } else {
            return message.say(
                'You do not have the permissions to do this action'
            );
        }
    }
};
