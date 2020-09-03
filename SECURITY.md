# Security Policy

## Supported Versions

Use this section to tell people about which versions of your project are
currently being supported with security updates.

| Version   | Supported          | Advised            |
| --------- | ------------------ | ------------------ |
| 2.0B      | :white_check_mark: | :x:                |
| 1.9.0.2   | :white_check_mark: | :white_check_mark: |
| 1.9.0.1   | :x:                | :x:                |
| 1.8.x     | :white_check_mark: | :x:                |
| < 1.8.5   | :x:                | :x:                |

## Reporting a Vulnerability

To Report a Vunerability just make a issue and I will be notified with in 1 minute and try to respond ASAP.

Also just follow this template so i can understand WTF is happening and tell you if you just need to update the bot:

> ## Version 1.9.0.2
> bot wont start i kept getting a error:
> ```bash
> (node:14052) UnhandledPromiseRejectionWarning: Error [TOKEN_INVALID]: An invalid token was provided.
>     at WebSocketManager.connect (/home/blue/GitHub/Potato.JS/node_modules/discord.js/src/client/websocket/WebSocketManager.js:133:26)
>     at CommandoClient.login (/home/blue/GitHub/Potato.JS/node_modules/discord.js/src/client/Client.js:222:21)
>     at process._tickCallback (internal/process/next_tick.js:68:7)
>     at Function.Module.runMain (internal/modules/cjs/loader.js:834:11)
>     at startup (internal/bootstrap/node.js:283:19)
>     at bootstrapNodeJSCore (internal/bootstrap/node.js:623:3)
> (node:14052) UnhandledPromiseRejectionWarning: Unhandled promise rejection. This error originated either by throwing inside of an async function without a catch block, > or by rejecting a promise which was not handled with .catch(). (rejection id: 1)
> (node:14052) [DEP0018] DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.
> ```
> ### Things done to cause the error
> 1. downloaded and installed normally
> 2. didnt edit the config because im a bit forgetful
> 3. ran the bot
