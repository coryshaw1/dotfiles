#!/usr/bin/env bash

cd ~

tmux new-session -d -s work

tmux rename-window dotfiles
tmux send-keys "cd dotfiles" Enter
tmux send-keys "clear" Enter

tmux new-window -t work:2 -n notes
tmux select-window -t work:2
tmux send-keys "cd obsidian" Enter
tmux send-keys "clear" Enter

tmux new-window -t work:3 -n git -c ~/dotfiles
tmux send-keys -t work:3 "lazygit" Enter

tmux new-window -t work:4 -n zsh
tmux select-window -t work:4
tmux send-keys "clear" Enter

tmux select-window -t work:1
tmux attach -t work
