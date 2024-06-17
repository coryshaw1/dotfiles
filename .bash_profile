export PATH=/usr/local/bin:$PATH

export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/mysql/bin:/opt/homebrew/bin
export PATH=/usr/local/mysql/bin:$PATH
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# alias ll="ls -GalhF"
alias ls="eza --all --color=always --long --git --icons=always --no-time --no-filesize --no-user --no-permissions"
alias ll="eza --all --color=always --long --git --icons=always"
alias vi="nvim"
alias vim="nvim"
alias sudo="sudo "
alias tmux="tmux -2"
alias tm=sesh_connect_list
alias cat="bat"
alias cd="z"
alias :q="exit"

function sesh_connect_list() {
	sesh connect $(sesh list -i | gum filter --limit 1 --placeholder 'Pick a sesh' --height 50 --prompt='⚡')
}

eval "$(rbenv init -)"
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
export PATH=/usr/local/share/python:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PATH="/usr/local/opt/avr-gcc/bin:$PATH"

if [ $ITERM_SESSION_ID ]; then
	export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND"
fi

if [ -f /sw/etc/bash_completion ]; then
	. /sw/etc/bash_completion
fi
