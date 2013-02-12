# ~/.zsh/etc/config.zsh

# History
HISTFILE="${HOME}/.zsh_history"
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

# Completion
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

# Highlight selected offer
zstyle ':completion:*' menu select

# Complete case insensitive
zstyle ':completion:*' matcher-list \
  'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Directories
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

# Smart URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Edit command line
autoload -U edit-command-line
zle -N edit-command-line

# Keybindings
bindkey '^[[A'    up-line-or-search     # Up
bindkey '^[[B'    down-line-or-search   # Down
bindkey '^[OH'    beginning-of-line     # Home
bindkey '^[OF'    end-of-line           # End
bindkey '^[[3~'   delete-char           # Del
bindkey '^[[1;5C' forward-word          # Ctrl-Right
bindkey '^[[1;5D' backward-word         # Ctrl-Left
bindkey '^[.'     copy-prev-shell-word  # Alt-.
bindkey '^E'      edit-command-line     # Ctrl-e
