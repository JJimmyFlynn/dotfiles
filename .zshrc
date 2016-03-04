# ZSH
export ZSH=/Users/JFlynn/.oh-my-zsh
ZSH_THEME="cobalt2"
plugins=(git sublime osx)
source $ZSH/oh-my-zsh.sh

# General
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"

# Git
alias goops="git add --all && git commit -m \"Minor fix for last commit\""

function gac {
    git add --all
    git commit -m $1
}

# PHP
alias art="php artisan"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"

# Site Directories
alias sites='cd ~/sites'
alias desk='cd ~/Desktop'
alias osgoode="cd ~/sites/Osgoode_Marley"
alias binky="cd /Users/JFlynn/sites/Homestead/projects/binky_lulu/htdocs/content/themes/binky_lulu"
alias dpc="cd /Users/JFlynn/sites/Homestead/projects/dpc"
alias soap='cd ~/sites/Soapwalla'
alias buckleys='cd /Users/JFlynn/sites/Homestead/projects/buckley_bakery/web/app/themes/buckleys_bakery'

# Servers
alias raiden='ssh hostmaster@raiden.catchfirecreative.net -p 2222'
alias jade='ssh hostmaster@jade.catchfirecreative.net -p 2222'
alias scorpion='ssh hostmaster@scorpion.catchfirecreative.net'
alias subzero='ssh hostmaster@subzero.catchfirecreative.net -p 2222'
alias motaro='ssh hostmaster@motaro.catchfirecreative.net'
alias kano='ssh hostmaster@kano.catchfirecreative.net'
alias jax='ssh hostmaster@jax.catchfirecreative.net'
alias kitana='ssh hostmaster@kitana.catchfirecreative.net -p 2222'

# Homestead
alias homestead='function __homestead() { (cd /Users/JFlynn/sites/Homestead && vagrant $*); unset -f __homestead; }; __homestead'