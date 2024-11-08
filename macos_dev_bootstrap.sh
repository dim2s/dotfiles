#!/bin/sh
#
# Just few lines to install tools that I might need using Homebrew
#


#Check that  Homebrew is not installed yet
if [ ! $(which brew) ] 
then
    echo "  Installing Homebrew (check /tmp/homebrew-install.log to be sure everything went smoothly)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 2> /tmp/homebrew-install.log
fi

#Run these commands in your terminal to add Homebrew to your PATH:
$(/opt/homebrew/bin/brew shellenv) >> $HOME/.zprofile

#Check that brew install is fully functionnal
brew doctor
brew update

#
brew install git

#cask is a homebrew extension to install gui apps (google chrome,  visual studio code, etc)
brew install homebrew/cask


exit 0
