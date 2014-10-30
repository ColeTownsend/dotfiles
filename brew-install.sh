# Install command-line tools using Homebrew
# Usage: `./brew-install.sh`

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
#sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
# Install zsh
brew install zsh
brew install zsh-completion
brew install zsh-syntax-highlighting

# Install wget with IRI support
brew install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp
brew install emacs

# Install some CTF tools; see https://github.com/ctfs/write-ups
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install nmap
#brew install pngcheck
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` et al.
#brew install xpdf
#brew install xz

# Install other useful binaries
brew install ack
brew install exiv2
brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install tree
brew install webkit2png
brew install zopfli
brew install git
brew install git-extras
brew install git-flow
brew install leiningen
brew install rbenv
brew install ruby-build
brew install htop-osx

#brew install homebrew/versions/lua52

# Remove outdated versions from the cellar
brew cleanup
