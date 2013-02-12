# ~/.zsh/init.zsh

ZSH="${HOME}/.zsh"

# Our completions and functions.
fpath=("${ZSH}/completions" "${ZSH}/functions" $fpath)

# Source all scripts in etc and local.
for f ("${ZSH}"/{etc,local}/*.{z,}sh(.N)); do
  source "${f}"
done

# Autoload functions.
for f ("${ZSH}"/functions/*(.N:t)); do
  autoload "${f}"
done

# Init completion.
autoload -U compinit
compinit
