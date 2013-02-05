# $ZSH/config.zsh

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Autocompletion
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

# Complete case insensitive
zstyle ':completion:*' matcher-list \
  'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Directories
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

# Smart URLS
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Correction
#setopt correct_all
#
#alias man='nocorrect man'
#alias mv='nocorrect mv'
#alias mkdir='nocorrect mkdir'
