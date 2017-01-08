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
sudo apt update

# Make everything executable
chmod 777 atom_setup.sh git_setup.sh

#Install git
sudo apt install git
# Configure git
./git_setup.sh

# Install wine
sudo apt install wine
sudo apt install wine1.8
sudo apt install wine-devel

# codecs
sudo apt install ubuntu-restricted-extras

# TLP
sudo apt install tlp tlp-rdw
sudo tlp start

# TODO: Install JDK, Build essencials
sudo apt-get install default-jdk
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

# TODO: Install python versions and pip

# TODO: Install node and it's packages

# Install VLC
sudo apt install vlc browser-plugin-vlc

# TODO: Install Opera, Chromium and Google Chrome

# TODO: Install PyCharm, Intellij Idea, WebStorm

# Install Atom
wget https://github.com/atom/atom/releases/download/v1.12.9/atom-amd64.deb && sudo dpkg -i atom-amd64.deb
# Configure Atom
./atom_setup.sh

# Install Design programs
sudo apt install inkscape
# Install other programs

sudo apt install -y htop
# fix broken packges
sudo apt update
sudo apt install -f
sudo apt autoclean
sudo apt autoremove

} 2>&1 | tee errors.log
