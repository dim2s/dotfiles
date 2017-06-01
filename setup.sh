#!/bin/sh
#
# Just few lines to install tools that I might need using Homebrew
#


#Check that  Homebrew is not installed yet
if [ ! $(which brew) ] 
then
    echo "  Installing Homebrew (check /tmp/homebrew-install.log to be sure everything went smoothly)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 2> /tmp/homebrew-install.log
fi

#Check that brew install is fully functionnal
brew doctor
brew update

#cask seem to be a good solution for big binary install
brew install caskroom/cask/brew-cask




echo "Installing python dev environnement"
brew install python
brew linkapps python
pip install virtualenv
mkdir -p ~/Sandbox/Projects ~/Sandbox/Virtualenvs

exit 0
