case $- in
    *i*) ;;
      *) return;;
esac
export PS1="\u@\H \w\$ "

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize
shopt -s globstar

alias ls='exa'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export GPG_TTY=$(tty)
alias dot='git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/lib/google-cloud-sdk/path.bash.inc' ]; then . '$HOME/lib/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/lib/google-cloud-sdk/completion.bash.inc' ]; then . '$HOME/lib/google-cloud-sdk/completion.bash.inc'; fi
