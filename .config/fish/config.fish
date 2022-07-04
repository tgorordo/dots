if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x GPG_TTY (tty)
    alias dot='git --git-dir=$HOME/.dot/ --work-tree=$HOME'
end
