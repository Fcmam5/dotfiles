#!/bin/bash
'''
    Script by Fortas Abdeldjalil (@Fcmam5)
    I wanted to move to my new computer, and to setup the things I need there
    Errors will be stored in "errors.log"
'''
{
#
# Update
sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade

#Enabling 32-bit architecture
sudo dpkg --add-architecture i386

# Add repositories
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:wine/wine-builds
sudo add-apt-repository -y ppa:damien-moore/codeblocks-stable
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.

sudo apt update

# Make everything executable
chmod 777 atom_setup.sh git_setup.sh

#Install git
sudo apt install -y git
# Configure git
./git_setup.sh

# Install OpenSSH
sudo apt install -y openssh-client
sudo apt install -y openssh-server

# Install wine
sudo apt install -y wine
sudo apt install -y wine1.8
sudo apt install -y wine-devel

# codecs
sudo apt install -y ubuntu-restricted-extras

# TLP
sudo apt install -y tlp tlp-rdw
sudo tlp start

# Install JDK, Build essencials
sudo apt-get install -y default-jdk
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

sudo apt install -y build-essential

# Install python versions and pip
sudo apt install -y python3
sudo apt install -y python-pip
sudo apt install -y python3-pip
pip install -U pip setuptools

# Paralel node & python packages installation
sudo python setup_packags.py

# Install VLC
sudo apt install vlc browser-plugin-vlc

# nstall Chromium and Google Chrome
sudo apt install chromium-browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Atom
wget https://github.com/atom/atom/releases/download/v1.12.9/atom-amd64.deb && sudo dpkg -i atom-amd64.deb
# Configure Atom
./atom_setup.sh

# Install MongoDB
sudo apt-get install -y mongodb-org

# Install virtualbox
wget http://download.virtualbox.org/virtualbox/5.1.12/virtualbox-5.1_5.1.12-112440~Ubuntu~xenial_amd64.deb && sudo dpkg -i virtualbox-5.1_5.1.12-112440~Ubuntu~xenial_amd64.deb
# Install TeamViewer
wget https://download.teamviewer.com/download/teamviewer_i386.deb && sudo dpkg -i teamviewer_i386.deb

# Install Design programs
sudo apt install -y inkscape

# Install other programs
sudo apt install -y htop

# Install codeblocks
sudo apt install -y codeblocks codeblocks-contrib

# Download PyCharm, Intellij Idea, WebStorm
wget https://download.jetbrains.com/idea/ideaIU-2016.3.2.tar.gz
wget https://download.jetbrains.com/python/pycharm-professional-2016.3.2.tar.gz
wget https://download.jetbrains.com/webstorm/WebStorm-2016.3.2.tar.gz

# fix broken packges
sudo apt update
sudo apt install -f
sudo apt autoclean
sudo apt autoremove

} 2>&1 | tee errors.log
