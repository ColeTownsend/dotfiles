# Install native apps
# Usage: `./cask-install.sh`

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install dropbox 2> /dev/null
brew cask install google-chrome 2> /dev/null
brew cask install google-chrome-canary 2> /dev/null
brew cask install imagealpha 2> /dev/null
brew cask install imageoptim 2> /dev/null
brew cask install iterm2 2> /dev/null
brew cask install the-unarchiver 2> /dev/null
brew cask install torbrowser 2> /dev/null
brew cask install transmission 2> /dev/null
brew cask install vlc 2> /dev/null
brew cask install alfred 2> /dev/null
brew cask install day-o 2> /dev/null
brew cask install java 2> /dev/null
brew cask install flash 2> /dev/null
brew cask install karabiner 2> /dev/null
brew cask install seil 2> /dev/null
brew cask install mplayerx 2> /dev/null

# Add Cask to Alfred search scope
brew cask alfred link
