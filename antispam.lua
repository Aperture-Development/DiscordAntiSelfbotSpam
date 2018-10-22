local discordia = require("discordia")
local client = discordia.Client()

--[[
    Insert here your bot user token.
]]
local botToken = "<INSERT BOT TOKEN>"

--[[
    List of not allowed nickname content
    If you want to add something, just add a new line like you see
    IMPORTANT: Don't forget the ',' after each line
]]
local nickBlackList = {
    "#%d%d%d%d",
    ".*%..*%/.*",
    ".*tweet.*"
}

function banMember(member)
    member.user:send({
        embed = {
            title = "You got banned!",
            description = [[I am sorry but I had to ban you because you look like a SelfBot If you think that was a mistake, please contact the server owner.]],
            fields = {
                {
                    name = "Guild Owner mention:",
                    value = member.guild.owner.user.mentionString,
                    inline = true
                },
                {
                    name = "Guild Owner tag:",
                    value = member.guild.owner.user.tag,
                    inline = true
                }
            },
            footer = {
                text = member.guild.name
            },
            color = 0xFF0000 -- hex color code
        }})

    --[[
        Contact guild owner about the ban
    ]]
    member.guild.owner.user:send({
        embed = {
            title = "A user got banned by me",
            description = [[I have banned a user for looking like a SelfBot.]],
            fields = {
                {
                    name = "Banned User Mention:",
                    value = member.user.mentionString,
                    inline = true
                },
                {
                    name = "Banned User Tag:",
                    value = member.user.tag,
                    inline = true
                }
            },
            footer = {
                text = member.guild.name
            },
            color = 0xFF0000 -- hex color code
        }})

    --[[
        Actually ban the user
    ]]
    member.guild:banUser(member.user, "Discord tag in username", 1)
end

client:on("ready", function() -- bot is ready
	client:setGame("Type !dev for info")
end)

client:on("memberJoin", function(member)

    for k,v in pairs(nickBlackList) do
        if string.match(member.user.username, v) then 
            banMember(member)
            break
        end
    end    
end)

--[[
    Please give me this credit and dont delete it
]]

client:on("messageCreate", function(message)

	local content = message.content

    if content == "!dev" or content == "!info" or content == "!developer" then
        message:reply({embed = {
            title = "Developed by Aperture Development",
            description = [[Hello, I am DiscordAntiSelfbotSpam and was developed by Aperture Development.]],
            fields = {
                {
                    name = "Our Website:",
                    value = "https://www.aperture-development.de/",
                    inline = true
                },
                {
                    name = "Our GitHub:",
                    value = "https://github.com/Aperture-Development/DiscordAntiSelfbotSpam",
                    inline = false
                },
                {
                    name = "Our GitLab:",
                    value = "https://gitlab.aperture-development.de/",
                    inline = false
                },
            },
            footer = {
                text = "This Bot is licenced under the GNU GENERAL PUBLIC LICENSE Version 3"
            },
            color = 0xFFFFFF -- hex color code
        }})
    end
end)


client:run("Bot "..botToken) -- replace BOT_TOKEN with your bot token
