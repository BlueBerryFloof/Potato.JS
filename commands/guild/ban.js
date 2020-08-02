const { Command } = require('discord.js-commando');
const { MessageEmbed } = require('discord.js');

module.exports = class BanCommand extends Command {
  constructor(client) {
    super(client, {
      name: 'ban',
      aliases: ['ban-member', 'ban-hammer'],
      memberName: 'ban',
      group: 'guild',
      description: 'Bans a tagged member',
      guildOnly: true,
      userPermissions: ['MANAGE_MESSAGES', 'KICK_MEMBERS', 'BAN_MEMBERS'],
      clientPermissions: ['MANAGE_MESSAGES', 'KICK_MEMBERS', 'BAN_MEMBERS'],
      args: [
        {
          key: 'userToBan',
          prompt:
            'Please mention the user you want to ban with @ or provide his ID',
          type: 'string'
        },
        {
          key: 'banReason',
          prompt: 'Why do you want to ban this user',
          type: 'string'
        }
      ]
    });
  }

  async run(message, { userToBan, banReason }) {
    if (message.member.hasPermission('MANAGE_MESSAGES', 'KICK_MEMBERS', 'BAN_MEMBERS')) {
      if (userToBan > 0) {

        let inData = message.client.users.fetch(userToBan);
        let promise = Promise.resolve(inData);
        let userDataAndShit = await promise;
        message.guild.members
          .ban(userToBan, { days: 0, reason: banReason })
          .then(() => {
            const banEmbed = new MessageEmbed()
              .addField('Banned:', userDataAndShit.username + "#" + userDataAndShit.discriminator)
              .addField('Reason', banReason)
              .setColor('#420626');
            message.channel.send(banEmbed);
          })
          .catch(e => {
            message.say(
              'Something went wrong when trying to ban this user, I probably do not have the permission to ban him'
            );
            return console.error(e);
          });
      } else {
        const user = message.mentions.members.first()
        user
          .ban(banReason)
          .then(() => {
            const banEmbed = new MessageEmbed()
              .addField('Banned:', user.user.username + "#" + user.user.discriminator)
              .addField('Reason', banReason)
              .setColor('#420626');
            message.channel.send(banEmbed);
          })
          .catch(e => {
            message.say(
              'Something went wrong when trying to ban this user, I probably do not have the permission to ban him'
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
