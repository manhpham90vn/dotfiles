#!/bin/bash

# Update and install basic packages
sudo apt update
sudo apt install -y git \
    curl \
    wget \
    vim \
    zsh \
    htop \
    tree \
    unzip \
    zip \
    net-tools

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
source ~/.zshrc
nvm install --lts
nvm use --lts

# Install pyenv
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc
sudo apt update
sudo apt install -y build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    curl \
    git \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev
pyenv install 3.12
pyenv global 3.12

# Install PHP
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt-get install -y openssl php8.3{,-cli,-common,-fpm,-mysql,-zip,-gd,-mbstring,-curl,-xml,-bcmath,-tokenizer}
sudo update-alternatives --set php /usr/bin/php8.3
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Install Database
sudo apt install mysql-server
sudo apt install redis-server
