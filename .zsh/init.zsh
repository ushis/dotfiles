# ~/.zsh/init.zsh

ZSH="${HOME}/.zsh"

# Our completions and functions.
fpath=("${ZSH}/completions" "${ZSH}/functions" $fpath)

# Source all scripts in etc and local.
for f in "${ZSH}"/{etc,local}/*.{z,}sh(.N); do
  source "${f}"
done

# Autoload functions.
autoload -U "${ZSH}"/functions/*(.N:t)

# Init completion.
autoload -U compinit
compinit
