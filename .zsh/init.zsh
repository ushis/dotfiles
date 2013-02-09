# ~/.zsh/init.zsh

ZSH=~/.zsh

# Our completions and functions.
fpath=($ZSH/vendor/completions $ZSH/functions $fpath)

# Source all scripts in lib and local.
for d in 'etc' 'local'; do
  for f ($ZSH/$d/*.(sh|zsh)(N)); do
    source "$f"
  done
done

# Autoload functions.
for f ($ZSH/functions/*(N)); do
  autoload "${f##*/}"
done

# Init completion.
autoload -U compinit
compinit
