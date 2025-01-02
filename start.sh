#!/bin/bash

# Create a new tmux session named 'webui' if it doesn't exist
tmux new-session -d -s webui

# Split window horizontally
tmux split-window -h

# Select first pane and start backend
tmux select-pane -t 0
tmux send-keys "cd backend && bash start.sh" C-m

# Select second pane and start pipelines
tmux select-pane -t 1
tmux send-keys "cd pipelines && bash start.sh" C-m

# Attach to the tmux session
tmux attach-session -t webui
