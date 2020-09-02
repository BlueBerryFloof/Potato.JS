const { Command } = require('discord.js-commando');
const { discord_owner_id } = require('../../config.json');

module.exports = class PruneCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'prune',
      aliases: ['delete-messages', 'purge' , 'bulk-delete'],
      description: 'Delete up to 99 recent messages',
      group: 'guild',
      memberName: 'prune',
      guildOnly: true,
      userPermissions: ['MANAGE_CHANNELS', 'MANAGE_MESSAGES'],
      clientPermissions: ['MANAGE_MESSAGES'],
      args: [
        {
          key: 'deleteCount',
          prompt: 'How many messages do you want to delete?',
          type: 'integer',
          validate: deleteCount => deleteCount < 100 && deleteCount > 0
        }
      ]
    });
  }

  run(message, { deleteCount }) {
    if (message.member.hasPermission('MANAGE_CHANNELS', 'MANAGE_MESSAGES')) {

      message.channel
        .bulkDelete(deleteCount)
        .then(messages => message.say(`Deleted ${messages.size} messages`))
        .catch(e => {
          console.error(e);
          return message.say(
            'Something went wrong when trying to delete messages :('
          );
        });
    } else if (message.author == discord_owner_id) {

      message.channel
        .bulkDelete(deleteCount)
        .then(messages => message.say(`Force deleted ${messages.size} messages by bot owner`))
        .catch(e => {
          console.error(e);
          return message.say(
            'Something went wrong when trying to delete messages :('
          );
        });
    } else {
      return message.say(
        'You do not have the permissions to do this action'
      );
    }
  }
};
