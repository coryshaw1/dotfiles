#!/usr/bin/env bash
current=$(tmux display-message -p '#S')
last=$(tmux list-sessions -F '#{session_last_attached} #{session_name}' \
  | sort -rn \
  | awk -v cur="$current" '{$1=""; name=substr($0,2); if (name !~ /^claude[ -]/ && name !~ /^opencode[ -]/ && name != cur) {print name; exit}}')
[ -n "$last" ] && tmux switch-client -t "$last"
