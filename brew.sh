#!/usr/bin/env bash

# Check oh-my-zsh
if [ -f "~/.oh-my-zsh/oh-my-zsh" ]; then
    echo "oh-my-zsh is not present"
    # Install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Check for Homebrew
####################
/usr/local/bin/brew -v > /dev/null

if [[ $? != 0 ]]; then
    # Install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # TODO: Replace home folder name
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/jose_sal_y_rosas/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Added required extensions
brew tap "homebrew/cask"
brew tap "homebrew/cask-fonts"
brew tap "homebrew/cask-versions"
brew tap "homebrew/core"

# Install essential binaries.
brew install make
brew install git

# Install useful binaries.
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install tmux
brew install tmuxinator

# Install cloud providers cli.
brew install awscli
brew install azure-cli

# Install development tools
brew install gh
brew install kubernetes-cli
brew install minikube
brew install nvm
brew install openjdk
brew install podman
brew install sqlite
brew install terraform
brew install watchman

# Install GUI applications

# Essentials
brew install --cask 1password
brew install --cask iterm2
brew install --cask spotify

# Favorite fonts
brew install --cask font-fira-mono-for-powerline
brew install --cask font-jetbrains-mono
brew install --cask font-iosevka
brew install --cask font-meslo-for-powerline
brew install --cask font-roboto-mono-for-powerline
brew install --cask font-inconsolata
brew install --cask font-inconsolata-for-powerline
brew install --cask font-inconsolata-g-for-powerline

# Software development
brew install --cask docker
brew install --cask postman
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask dbeaver-community

# Browsers
brew install --cask firefox
brew install --cask firefox-developer-edition
brew install --cask google-chrome
brew install --cask microsoft-edge

# For enterprise: use a conditional for applications below
brew install --cask box-drive
brew install --cask slack
brew install --cask microsoft-teams

# Control screen's color 
brew install --cask flux

# Mobile development
brew install --cask android-studio

# TODO: Add a flag to install these
# brew install --cask virtualbox
# brew install --cask virtualbox-extension-pack

# Remove outdated versions from the cellar.
brew cleanup

# NVM configuration
mkdir ~/.nvm

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc