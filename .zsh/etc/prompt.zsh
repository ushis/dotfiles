# ~/.zsh/etc/prompt.zsh

# Colors
autoload colors; colors;

# Use PROMPT
setopt prompt_subst

# Source __git_ps1
source "${ZSH}/vendor/git-prompt.sh"

# [hostname][dirname](gitbranch)%
___git_prompt() {
  local branch suffix
  branch="$(__git_ps1 '%s')"
  test -z "${branch}" && return
  test -n "$(git ls-files --others --exclude-standard 2> /dev/null)" && suffix='°'
  git diff --quiet 2> /dev/null || suffix='*'
  git diff --cached --quiet 2> /dev/null || suffix='^'
  printf '(%s%s)' "${branch}" "${suffix}"
}

PROMPT='%{${fg[yellow]}%}[%m][%c]$(___git_prompt)%#%{${reset_color}%} '
