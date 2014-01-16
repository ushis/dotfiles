# ~/.zshrc

# Load zsh config
source "${HOME}/.zsh/init.zsh"

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

# Util
alias get='curl -#RLOC -'
alias lg='git log --graph --full-history --all --color \
  --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

# Navigation
alias - -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Disable globbing
alias calc='noglob calc'
alias rake='noglob rake'
alias rsync='noglob rsync'

# Shut down
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
