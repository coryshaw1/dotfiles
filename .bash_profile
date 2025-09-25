export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:$HOME/.local/opt/go/bin:$HOME/go/bin
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/mysql/bin:/Users/coryshaw/.dotnet/tools:$PATH
. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"
. "$HOME/.local/bin"
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
export EDITOR=nvim

# alias ll="ls -GalhF"
alias ls="eza --all --color=always --long --git --icons=always --no-time --no-filesize --no-user --no-permissions --no-quotes"
alias ll="eza --all --color=always --long --git --icons=always --no-quotes"
alias vi="nvim"
alias vim="nvim"
alias sudo="sudo "
alias tmux="tmux -2"
alias tm=sesh_connect_list
alias cat="bat"
alias man="batman"
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'         # Global alias for -h to use bat
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain' # Global alias for --help to use bat
alias cd="z"
alias :q="exit"

function sesh_connect_list() {
  sesh connect $(sesh list -i | gum filter --limit 1 --placeholder 'Pick a sesh' --height 50 --prompt='⚡')
}

eval "$(rbenv init -)"

export PATH="/usr/local/opt/avr-gcc/bin:$PATH"

if [ -f /sw/etc/bash_completion ]; then
  . /sw/etc/bash_completion
fi

if [ -f "$HOME/.bash_secrets" ]; then
  source "$HOME/.bash_secrets"
fi
