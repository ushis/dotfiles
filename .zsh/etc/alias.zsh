# ~/.zsh/etc/alias.zsh

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

# Shortcuts
alias rs='rails s'
alias rc='rails c'
alias dc='docker-compose'

# Util
alias get='curl -#RLOC -'
alias myip='curl https://myip.honkgong.info'
alias ssh-tunnel='ssh -ND 127.0.0.1:6666'

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

# Systemd
if type systemctl &>/dev/null; then
  alias reboot='sudo systemctl reboot'
  alias poweroff='sudo systemctl poweroff'
fi
