# ~/.zlogin

# Start tmux on login shells.
if test -z "${TMUX}" && type tmux &>/dev/null; then
  tmux attach &>/dev/null || tmux new-session
fi
