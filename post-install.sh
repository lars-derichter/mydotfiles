#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install XCode command line tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brews
sh ./brew.sh

# Install casks
sh ./cask.sh

# Install ruby gems
sh ./gem.sh

# Install npm packages
sh ./npm.sh

# Install Atom packages
sh ./apm.sh
