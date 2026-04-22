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
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

function sesh_connect_list() {
  sesh connect "$(
    sesh list --hide-duplicates -i | fzf \
      --height 75% --layout=reverse --border --padding 1,2 --margin 1,2 \
      --no-sort --border-label ' sesh ' --prompt '   ' \
      --header '  ^a all ^t tmux ^g configs ^x zoxide ^d tmux kill ^f find' \
      --ansi --nth 2.. \
      --bind 'tab:down,btab:up' \
      --bind 'ctrl-a:change-prompt(  )+reload(sesh list --hide-duplicates -i)' \
      --bind 'ctrl-t:change-prompt(  )+reload(sesh list --hide-duplicates -it)' \
      --bind 'ctrl-g:change-prompt(  )+reload(sesh list --hide-duplicates -ic)' \
      --bind 'ctrl-x:change-prompt(  )+reload(sesh list --hide-duplicates -iz)' \
      --bind 'ctrl-f:change-prompt(  )+reload(fd -H -d 2 -t d -E .Trash . ~)' \
      --bind 'ctrl-d:execute(tmux kill-session -t {})+change-prompt(   )+reload(sesh list --hide-duplicates -i)' \
      --preview 'sesh preview {}'
  )"
}

eval "$(rbenv init -)"

export PATH="/usr/local/opt/avr-gcc/bin:$PATH"

if [ -f /sw/etc/bash_completion ]; then
  . /sw/etc/bash_completion
fi

if [ -f "$HOME/.bash_secrets" ]; then
  source "$HOME/.bash_secrets"
fi
