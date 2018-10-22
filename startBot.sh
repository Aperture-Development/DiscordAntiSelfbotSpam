#!/bin/bash
echo "-------------------------------"
echo "Welcome to DiscordAntiSelfBot"
echo "This script automatically restarts the bot, in case of a crash"
echo "If you want to be able to close the ssh connection to your server without crashing the bot, use a software like 'screen'"
echo "If you want to use screen, do it like this: 'screen -S AntiSelfBot ./startBot.sh"
echo "To abort the script, use 'Ctrl + C'"
echo "-------------------------------"
while :
do
  ./luvit antispam.lua
done
