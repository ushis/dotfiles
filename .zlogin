# ~/.zlogin

# Start tmux on login shells.
if [ -z "${TMUX}" ]; then
  tmux attach || tmux new-session
fi
