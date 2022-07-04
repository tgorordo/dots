if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x GPG_TTY (tty)
    alias dot='git --git-dir=$HOME/.dot/ --work-tree=$HOME'
    bass source ~/.cargo/env
    bass source ~/.ghcup/env
    bass source ~/.elan/env

    if test -f '$HOME/lib/google-cloud-sdk/path.fish.inc'
        bass source '$HOME/lib/google-cloud-sdk/path.fish.inc'
    end
end
