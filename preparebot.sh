echo "Some info before: this script will install some dependencies and needs sudo rights"
echo "If you have not installed sudo, please abort now and install it with 'apt-get install sudo'"
echo "If you encounter issues, report them here: https://github.com/Aperture-Development/DiscordAntiSelfbotSpam"
echo "-- DiscordAntiSelfbotSpam by Aperture Development - LICENCE: GNU General Public License v3.0 --"
sleep 15
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install curl lua5.3 git
sudo useradd antispambot
cd /
sudo mkdir -p antispambot
cd antispambot
curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sudo sh
sudo chown -R antispambot:antispambot * .
sudo git init .
sudo git remote add origin https://github.com/Aperture-Development/DiscordAntiSelfbotSpam.git
sudo git pull origin master
sudo ./lit install SinisterRectus/discordia
echo "---------------------------------------------"
echo "In the next step, please enter your Bot token"
echo "---------------------------------------------"
sleep 5
sudo nano antispam.lua
sudo chown -R antispambot:antispambot * .
echo "---------------------------------------------------------------------------------------------------"
echo "Done! You can start your bot using './luvit antispam.lua'"
echo "For security reasons, you should run the bot as the user 'antispambot' ( created by the script )"
echo "To let it continue running in the background, install it as service or use screen"
echo "Thank you for using our script. - Aperture Development"
echo "---------------------------------------------------------------------------------------------------"
