#compdef pwm

# Zsh completion for the pwm command line tool.
#
# Copy this file to ~/.zsh/completions/_pwm
#
# Add it to your fpath and init completion.
#
#   fpath=(~/.zsh/completions fpath)
#   compinit
#
# Maybe you have to purge your compdump.
local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -C \
  '(- *)'{-h,--help}'[Display help and exit]' \
  '(-b --backup)'{-b,--backup}'[Saves the database to another file]:Backup file:_files' \
  '(-c --config)'{-c,--config}'[Use a custom config file location]:Config file:_files' \
  '(-C --clipboard)'{-C,--clipboard}'[Copy password to clipboard]' \
  '(-d --delete)'{-d,--delete}'[Delete a password from the database]:Password ID' \
  '(-D --database)'{-D,--database}'[Specify the path to the database]:Database:_files' \
  '(-f --force)'{-f,--force}'[Override existing password]' \
  '(-g --get)'{-g,--get}'[Display password]:Password ID' \
  '(-G --generate)'{-G,--generate}'[Generate a new for ID]:ID' \
  '--gpgdir[Specify a custom GPG directory]:GPG directory:_dirs' \
  '(-l --list)'{-l,--list}'[List all passwords]' \
  '(-L --length)'{-L,--length}'[Specify password length]:Length' \
  '(-o --owner)'{-o,--owner}'[Specify the GPG encryption recipient]:Owner' \
  '--version[Display version and exit]' \
  && ret=0

return ret