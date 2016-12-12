
# ZSH
export ZSH=/Users/JFlynn/.oh-my-zsh
ZSH_THEME="cobalt2"
plugins=(git sublime osx)
source $ZSH/oh-my-zsh.sh

# General
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Local Path Additions
if [ -f '/Users/JFlynn/dotfiles-local/.path' ]
then
  source '/Users/JFlynn/dotfiles-local/.path'
fi

# Git
alias goops="git add --all && git commit -m \"Minor fix for last commit\""
alias gch="git checkout"

function gac {
    git add --all
    git commit -m $1
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# All the dig info
function digga() {
  dig +nocmd "$1" any +multiline +noall +answer
}

# Get a Weather Report for Portsmouth
function weather() {
  curl http://wttr.in/03801
}
# Fast open
alias o="open ."

# List all files colorized in long format
alias l="ls -laF"

# Lock the screen
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# PHP
alias art="php artisan"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"

# Site Directories
alias sites='cd ~/sites'
alias desk='cd ~/Desktop'

# Local Aliases
if [ -f '/Users/JFlynn/dotfiles-local/.aliases' ]
then
  source '/Users/JFlynn/dotfiles-local/.aliases'
fi

# Servers
alias raiden='ssh hostmaster@raiden.catchfirecreative.net -p 2222'
alias jade='ssh hostmaster@jade.catchfirecreative.net -p 2222'
alias jadecc='ssh catchfirec@jade.catchfirecreative.net -p 2222'
alias scorpion='ssh hostmaster@scorpion.catchfirecreative.net'
alias subzero='ssh hostmaster@subzero.catchfirecreative.net -p 2222'
alias motaro='ssh hostmaster@motaro.catchfirecreative.net'
alias kano='ssh hostmaster@kano.catchfirecreative.net'
alias jax='ssh hostmaster@jax.catchfirecreative.net'
alias kitana='ssh hostmaster@kitana.catchfirecreative.net -p 2222'

# Homestead
alias homestead='function __homestead() { (cd /Users/JFlynn/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
