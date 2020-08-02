const { Command } = require('discord.js-commando');
const { MessageEmbed } = require('discord.js');

module.exports = class KickCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'kick',
      aliases: ['kick-member', 'throw'],
      memberName: 'kick',
      group: 'guild',
      description: 'Kicks a tagged member',
      guildOnly: true,
      userPermissions: ['MANAGE_MESSAGES', 'KICK_MEMBERS'],
      clientPermissions: ['MANAGE_MESSAGES', 'KICK_MEMBERS'],
      args: [
        {
          key: 'userToKick',
          prompt: 'Who do you want to kick?',
          type: 'string'
        },
        {
          key: 'kickReason',
          prompt: 'Why do you want to kick this user',
          type: 'string'
        }
      ]
    });
  }

  async run(message, { userToKick, kickReason }) {
    if (message.member.hasPermission('KICK_MEMBERS')) {
      if (userToKick > 0) {
        
        let inData = message.client.users.fetch(userToKick);
        let promise = Promise.resolve(inData);
        let userDataAndShit = await promise;
        message.guild.member(userToKick)
          .kick(kickReason)
          .then(() => {
            const kickEmbed = new MessageEmbed()
              .addField('Kicked:', userDataAndShit.username + "#" + userDataAndShit.discriminator)
              .addField('Reason', kickReason)
              .setColor('#420626');
            message.channel.send(kickEmbed);
          })
          .catch(e => {
            message.say(
              'Something went wrong when trying to kick this user, I probably do not have the permission to kick him'
            );
            return console.error(e);
          });
      } else {
        const user = message.mentions.members.first()
        user
          .kick(kickReason)
          .then(() => {
            const kickEmbed = new MessageEmbed()
              .addField('Kicked:', user.user.username + "#" + user.user.discriminator)
              .addField('Reason:', kickReason)
              .setColor('#420626');
            message.channel.send(kickEmbed);
          })
          .catch(e => {
            message.say(
              'Something went wrong when trying to kick this user, I probably do not have the permission to kick him'
            );
            return console.error(e);
          });
      }
    } else {
      return message.say(
        'You do not have the permissions to do this action'
      );
    }
  }
};
