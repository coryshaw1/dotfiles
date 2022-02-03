export PATH=/usr/local/bin:$PATH

export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/mysql/bin
export PATH=/usr/local/mysql/bin:$PATH
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1


alias ll="ls -GalhF"
alias vi="nvim"
alias sudo="sudo "
alias tmux="tmux -2"

eval "$(rbenv init -)"
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
export PATH=/usr/local/share/python:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PATH="/usr/local/opt/avr-gcc/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOARCH="amd64"
export GO111MODULE=on
export PATH=${PATH}:`go env GOPATH`/bin

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

if [ -f /sw/etc/bash_completion ]; then
   . /sw/etc/bash_completion
fi
