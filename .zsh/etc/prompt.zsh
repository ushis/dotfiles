# $ZSH/prompt.zsh

# Colors
autoload colors; colors;
setopt prompt_subst

# Source __git_ps1
source $ZSH/vendor/git-prompt.sh

# [hostname][dirname](gitbranch)%
PROMPT='%{$fg[yellow]%}[%m][%c]$(__git_ps1 "(%s)")%#%{$reset_color%} '
