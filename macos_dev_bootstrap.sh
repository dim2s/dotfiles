#!/bin/sh
#
# Just few lines to install tools that I might need using Homebrew
#

softwareupdate --install-rosetta --agree-to-license

#Check that  Homebrew is not installed yet
if [ ! $(which brew) ] 
then
    echo "  Installing Homebrew (check /tmp/homebrew-install.log to be sure everything went smoothly)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 2> /tmp/homebrew-install.log
fi

#Run these commands in your terminal to add Homebrew to your PATH:
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>$HOME/.zprofile
. $HOME/.zprofile

#Check that brew install is fully functionnal
brew doctor
brew update

git clone https://github.com/dim2s/dotfiles.git

brew bundle --file=$HOME/dotfiles/brewfile

exit 0
