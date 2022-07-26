#!/usr/bin/env bash

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
brew install openjdk
brew install podman
brew install sqlite
brew install terraform
brew install watchman

# Install GUI applications
brew install --cask android-studio
brew install --cask dbeaver-community
brew install --cask docker
brew install --cask firefox
brew install --cask flux
brew install --cask font-fira-mono-for-powerline
brew install --cask font-jetbrains-mono
brew install --cask font-iosevka
brew install --cask font-meslo-for-powerline
brew install --cask font-roboto-mono-for-powerline
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask osxfuse
brew install --cask postman
brew install --cask slack
brew install --cask spotify
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup