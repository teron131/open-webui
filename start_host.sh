#!/bin/bash

# Start a new tmux session named "openwebui"
tmux new-session -d -s openwebui

# Create a window for the backend
tmux rename-window -t openwebui:0 'backend'
tmux send-keys -t openwebui:0 'cd backend && ./start.sh' C-m

# Create a new window for the pipelines
tmux new-window -t openwebui:1 -n 'pipelines'
tmux send-keys -t openwebui:1 'cd pipelines && ./start.sh' C-m

# Attach to the tmux session
tmux attach-session -t openwebui
