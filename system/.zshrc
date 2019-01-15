
# ZSH
export ZSH=/Users/johnflynn/.oh-my-zsh
ZSH_THEME="materialtheme"
plugins=(git sublime osx zsh-vscode)
source $ZSH/oh-my-zsh.sh

# General
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Local Path Additions
if [ -f '/Users/johnflynn/dotfiles-local/.path' ]
then
  source '/Users/johnflynn/dotfiles-local/.path'
fi

# Git
alias goops="git add --all && git commit -m \"Minor fix for last commit\""
alias gc="git checkout"
alias gmc="git checkout master"
alias gcb="git checkout -b"
alias gpu="git pull"

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

# Get info about moon phase
function moon() {
  curl http://wttr.in/moon
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
alias desk='cd ~/Desktop'

# Local Aliases
if [ -f '/Users/johnflynn/dotfiles-local/.aliases' ]
then
  source '/Users/johnflynn/dotfiles-local/.aliases'
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
