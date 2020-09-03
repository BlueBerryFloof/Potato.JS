const fetch = require('node-fetch');
const { tenorAPI } = require('../../config.json');
const { Command } = require('discord.js-commando');

module.exports = class MemeCommand extends Command {
    constructor(client) {
        super(client, {
            name: 'meme',
            aliases: ['get-meme', 'cats'],
            group: 'other',
            memberName: 'cat',
            description: 'Replies with a funni meme picture',
            throttling: {
                usages: 2,
                duration: 10
            }
        });
    }

    run(message) {
        var ext = "";
        var memeID = 0;
        var min = 1;
        var max = 5
        min = Math.ceil(min);
        max = Math.floor(max);
        var extID = (Math.floor(Math.random() * (max - min + 1)) + min);

        if (extID == 1) {
            ext = ".gif"

            var minone = 1;
            var maxone = 2
            minone = Math.ceil(minone);
            maxone = Math.floor(maxone);
            memeID = (Math.floor(Math.random() * (maxone - minone + 1)) + minone);
        } else if (extID == 2) {
            ext = ".jpg"

            var mintwo = 1;
            var maxtwo = 8
            mintwo = Math.ceil(mintwo);
            maxtwo = Math.floor(maxtwo);
            memeID = (Math.floor(Math.random() * (maxtwo - mintwo + 1)) + mintwo);
        } else if (extID == 3) {
            ext = ".mov"

            var minthree = 1;
            var maxthree = 11
            minthree = Math.ceil(minthree);
            maxthree = Math.floor(maxthree);
            memeID = (Math.floor(Math.random() * (maxthree - minthree + 1)) + minthree);
        } else if (extID == 4) {
            ext = ".mp4"

            var minfour = 1;
            var maxfour = 78
            minfour = Math.ceil(minfour);
            maxfour = Math.floor(maxfour);
            memeID = (Math.floor(Math.random() * (maxfour - minfour + 1)) + minfour);
        } else if (extID == 5) {
            ext = ".png"

            var minfive = 1;
            var maxfive = 6
            minfive = Math.ceil(minfive);
            maxfive = Math.floor(maxfive);
            memeID = (Math.floor(Math.random() * (maxfive - minfive + 1)) + minfive);
        }

        message.say('http://blueberry.schutte.net/DV/Image%20('+ memeID +')' + ext)
    }
};
