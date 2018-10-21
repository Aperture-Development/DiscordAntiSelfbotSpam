# DiscordAntiSelfbotSpam
A small script to keep those selfbots out of our Discord servers

# Installation

1. Go to https://discordapp.com/developers/applications/ and create a new application
2. Add a bot to the application and remember the token secret
3. Just download the 'preparebot.sh' on your server and run it. It will automatically install the bot.

The 'preparebot.sh' script is working with: 
- Ubuntu
- Debian  

The bot itself is compatible with all platforms that support [luvit](https://luvit.io/install.html)

4. Start your bot using ``./luvit antispam.lua``

Alternative: Use the hosted bot by Aperture Development:
https://discordapp.com/oauth2/authorize?client_id=503222820986159105&scope=bot&permissions=6

# Why does this exist?

Since some months, discord gets overloaded with selfbots that just join and leave servers instantly. They have links or discord tags as names. Those bots are used to spam servers with unwanted advertisement ( the join message ). So to automatically ban these bots, just run this script and it will automatically recocnice those self bots and ban them.

# Anything I should know?

The bot is written in lua and uses the DiscordAPI lib [Discordia](https://github.com/SinisterRectus/Discordia)  
The bot itself is licenced under the GNU General Public License v3.0  
If you find mistakes or have improovement ideas, feel free to open a issue and/or create a pull request with your code changes.  
