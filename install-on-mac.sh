#!/bin/bash

# base
brew install git
brew install git-flow
brew install docker
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

# tooling
brew install httpie
brew install fzf
brew install watch 

# K8S
brew install kubernetes-cli
brew install kube-ps1
brew install kubectx
brew install stern

# dev env
brew cask install vscodium
brew install node@12
brew install nvm

# Node packages:
npm i -g npm-check
