# ~/.zshrc

# Load zsh config
source ~/.zsh/init.zsh

# Some vars
export EDITOR=vim
export TERM='xterm-256color'

# Modified commands
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias diff='colordiff'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 3'
alias tree='tree -aAC --dirsfirst'
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias - -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Shut down
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
