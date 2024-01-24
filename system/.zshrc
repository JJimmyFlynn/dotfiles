# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# ZSH
export ZSH="/Users/johnflynn/.oh-my-zsh"
plugins=(git sublime macos)
source $ZSH/oh-my-zsh.sh

# General
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
MTA_API_KEY=34uuR1Sbdl7utfois9S1H3Cp1jhFFv2W9WQXdH7x

# N Package Manager
export N_PRESERVE_NPM=1 # Keeps installed NPM version when switching Node versions

# Set Spaceship ZSH as a prompt
source "/usr/local/opt/spaceship/spaceship.zsh"

# Local Path Additions
if [ -f '/Users/johnflynn/dotfiles-local/.path' ]
then
  source '/Users/johnflynn/dotfiles-local/.path'
fi

# Make Jetbrains terminals use natural keyboard shortcuts for go to start/end of line
bindkey "\e\eOD" beginning-of-line
bindkey "\e\eOC" end-of-line

# Git
alias goops="git add --all && git commit -m \"Minor fix for last commit\""
alias gc="git checkout"
alias gmc="git checkout master"
alias gcb="git checkout -b"
alias gpu="git pull"
alias gs="git status -s"

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

# MTA Train Info
function gates() {
  underground stops J --api-key 34uuR1Sbdl7utfois9S1H3Cp1jhFFv2W9WQXdH7x | grep J30S | sed "s/J30S/Manhattan Bound/"
  underground stops J --api-key 34uuR1Sbdl7utfois9S1H3Cp1jhFFv2W9WQXdH7x | grep J30N | sed "s/J30N/Queens Bound/"
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
alias craft="php craft"

# Node / NPM
alias run="npm run"

# Site Directories
alias desk='cd ~/Desktop'

# Local Aliases
if [ -f '/Users/johnflynn/dotfiles-local/.aliases' ]
then
  source '/Users/johnflynn/dotfiles-local/.aliases'
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/johnflynn'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

export PATH=$PATH:/Users/johnflynn/.spicetify

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
