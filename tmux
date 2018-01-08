setw -g mode-keys vi

#sane split-pane keybinds
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

#easy config reload
bind r source-file ~/.tmux.conf

#switch panes without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

#mouse mode
#in tmux 2.1+: set -g mouse on
set -g mouse-select-window on
set -g mouse-select-pane on
set -g mouse-resize-pane on

#don't rename windows automatically
set-option -g allow-rename off

#disable multi-command sequences
set-option -g repeat-time 250

#set scrollback buffer size
set-option -g history-limit 32768

unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection

