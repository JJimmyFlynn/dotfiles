#!/bin/bash


# Install zsh
echo 'Installing oh-my-zsh'
echo '--------------------'
rm -rf $HOME/.oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Sym link zsh preferences
mv $HOME/.zshrc $HOME/.zshrc-old
ln -s $HOME/dotfiles/system/.zshrc $HOME/.zshrc

# Install Composer
echo 'Install Composer'
echo '----------------'
cd ~
curl -sS https://getcomposer.org/installer | php
echo 'Move Composer executable'
mv -f composer.phar /usr/local/bin/composer

# Install Homebrew
echo 'Install Homebrew'
echo '----------------'
sudo rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install PHP
echo 'Install PHP'
echo '-----------'
brew install homebrew/php/php70

# Install MariaDB
echo 'Install MariaDB'
echo '---------------'
brew install mariadb
brew services start mariadb

# Install Laravel Valet
echo 'Install Laravel Valet'
echo '---------------------'
composer global require laravel/valet
valet install

# Install Yarn
echo 'Install Yarn'
echo '------------'
brew install yarn

# Install Gulp
echo 'Install Gulp'
echo '------------'
npm install -g gulp

echo '----------------------'
echo '~Fin'
echo '----------------------'