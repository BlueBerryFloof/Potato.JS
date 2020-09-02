const { Command } = require('discord.js-commando');

module.exports = class PruneCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'test',
            aliases: ['test'],
            description: 'this is a test file to make sure shit works',
            group: 'guild',
            memberName: 'test',
            guildOnly: true,
        });
    }

    run(message) {
        if (message.member.hasPermission(['KICK_MEMBERS'],)) {
            message.say('This member can kick');
        }
        if (message.member.hasPermission('MANAGE_MESSAGES')) {
            message.say('This member can delete stuff');
        }
        if (message.member.hasPermission('BAN_MEMBERS')) {
            message.say('This member can ban');
        }
        if (message.member.hasPermission('MANAGE_CHANNELS')) {
            message.say('This member can manage the ammount of channels there is');
        }
    }
};
