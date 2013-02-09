# ~/.zsh/init.zsh

ZSH=~/.zsh

# Our completions and functions.
fpath=($ZSH/completions $ZSH/functions $fpath)

# Source all scripts in etc and local.
for f ($ZSH/{etc,local}/*.(sh|zsh)(N)); do
  source "$f"
done

# Autoload functions.
for f ($ZSH/functions/*(N)); do
  autoload "${f##*/}"
done

# Init completion.
autoload -U compinit
compinit
