## Implemented in Ubuntu Server 18.04 Bionic VM

# install required packages
sudo apt-get install dirmngr gpg-agent apt-transport-https

# remove unused packages
sudo apt autoremove

# import the GPG key used to sign the repositories
sudo apt-key adv --keyserver hkps://keys.openpgp.org --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E

# create a weechat.list file with the repository (works specifically for Ubuntu Bionic 18.04)
echo "deb https://weechat.org/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/weechat.list
echo "deb-src https://weechat.org/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list.d/weechat.list

# resynchronize package index files
sudo apt-get update

# packages installation stable version
sudo apt-get install weechat-curses weechat-plugins weechat-python weechat-perl

# run Weechat client
weechat
