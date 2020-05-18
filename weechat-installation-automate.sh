#!/bin/sh
sudo apt-get install dirmngr gpg-agent apt-transport-https -y
sudo apt autoremove -y
sudo apt-key adv --keyserver hkps://keys.openpgp.org --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E
echo "deb https://weechat.org/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/weechat.list
echo "deb-src https://weechat.org/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list.d/weechat.list
sudo apt-get update
sudo apt-get install weechat-curses weechat-plugins weechat-python weechat-perl -y
