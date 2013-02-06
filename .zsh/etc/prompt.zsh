# $ZSH/prompt.zsh

# Colors
autoload colors; colors;
setopt prompt_subst

# Source __git_ps1
[ -f /usr/share/git/git-prompt.sh ] && source /usr/share/git/git-prompt.sh

# [hostname][dirname](gitbranch)%
PROMPT='%{$fg[yellow]%}[%m][%c]$(__git_ps1 "(%s)")%#%{$reset_color%} '
