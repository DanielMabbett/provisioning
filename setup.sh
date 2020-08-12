#!/bin/sh

# Tested for Ubuntu 20.04 - WSL 2

# Set up Alias
touch ~/.bash_aliases

# Install Essentials
sudo apt -y install build-essential curl file git

# Install Linux Brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin/:$PATH"' >> ~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >> ~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >> ~/.bashrc

# Install GCC
brew install gcc

# Install Python
brew install pyenv
pyenv install 3.7.3
pyenv global 3.7.3
pyenv version 

# Install Terraform 
brew install terraform 
echo "alias tf=terraform" >> ~/.bash_aliases

# Install Docker
brew install docker
brew install docker-compose
echo "alias dc=docker-compose" >> ~/.bash_aliases

# Install Kubectl
brew install kubectl
echo "alias k=kubectl" >> ~/.bash_aliases

# Install golang
brew install go

# Install Ansible
# todo: add ansible 

# Install pwsh core
# todo: add pwsh core

# Install Azure CLI v2
brew install azure-cli
