#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

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
brew install minikube
brew install openjdk
brew install podman
brew install terraform
brew install watchman

# Remove outdated versions from the cellar.
brew cleanup