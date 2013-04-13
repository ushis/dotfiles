# ~/.zlogin

# Start tmux on login shells.
if [ -z "${TMUX}" ]; then
  tmux attach &>/dev/null || tmux new-session
fi
