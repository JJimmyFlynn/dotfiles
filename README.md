# Dotfile

This repo contains the dotfiles for my system which are managed by [Stow](https://www.gnu.org/software/stow/)

## Requirements

Ensure you have Stow installed on your system

```
$ brew install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/jjimmyflynn/dotfiles.git
$ cd dotfiles
```

then use `stow` to create symlinks

```
$ stow .
```
