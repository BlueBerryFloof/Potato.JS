const { Command } = require('discord.js-commando');
const { MessageAttachment, Attachment } = require('discord.js');
const { bot_id } = require('../../config.json');
module.exports = class SayCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'quotethat',
            aliases: ['quote-that', 'quote'],
            memberName: 'quotethat',
            group: 'other',
            description: 'Quote the last message',
        });
    }

    run(message) {
        message.channel.messages.fetch({ limit: 2 }).then(messages => {
            let quoteablemessage = messages.last();
            if (quoteablemessage.author.id === bot_id) {
                message.channel.send("I can't quote myself!");
                return
            } else {
                message.channel.messages.fetch({ limit: 2 }).then(messages => {
                    let lastMessage = messages.last();
                    if (lastMessage.attachments.size > 0) {
                        var AttachmentTWO = (lastMessage.attachments).array();
                        const attachment = new MessageAttachment(AttachmentTWO[0].url);
                        if (!lastMessage.author.bot) {
                            message.channel.send(attachment);
                            setTimeout(function () {
                                return message.channel.send("> " + lastMessage.content + "\n" + "- <@" + lastMessage.author.id + ">");
                            }, 500);
                        } else {
                            return message.channel.send("> " + lastMessage.content + "\n" + "- " + message.author.username + "#" + message.author.discriminator);
                        }
                    } else {
                        if (!lastMessage.author.bot) {
                            return message.channel.send("> " + lastMessage.content + "\n" + "- <@" + lastMessage.author.id + ">");
                        } else {
                            return message.channel.send("> " + lastMessage.content + "\n" + "- " + message.author.username + "#" + message.author.discriminator);
                        }
                    }
                })
                    .catch(console.error);
            }
        })
    }
};
