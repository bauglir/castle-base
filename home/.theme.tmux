# This tmux statusbar config was created by tmuxline.vim
# on Mon, 21 Oct 2019

set -g message-command-style "fg=colour192,bg=colour238"
set -g message-style "fg=colour192,bg=colour238"

set -g pane-active-border-style "fg=colour192"
set -g pane-border-style "fg=colour238"

set -g status "on"
set -g status-justify "centre"
set -g status-left "#[fg=colour232,bg=colour192] #S #[fg=colour192,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour192,bg=colour238] #(uptime | cut -d \",\" -f1 | cut -d \" \" -f4-) #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour192,bg=colour235] #(whoami) #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]"
set -g status-left-length "100"
set -g status-left-style "none"
set -g status-right "#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour192,bg=colour235] %R #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour192,bg=colour238] %F #[fg=colour192,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour232,bg=colour192] #h  #(ip route get 1 | awk '{print $7 \" (\" $5 \")\" }' | head -n 1) "
set -g status-right-length "100"
set -g status-right-style "none"
set -g status-style "none,bg=colour235"

setw -g window-status-activity-style "underscore,fg=colour192,bg=colour235"
setw -g window-status-current-format "#[fg=colour235,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour192,bg=colour238] #I  #W  #F #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]"
setw -g window-status-format "#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[default] #I #W #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=colour192,bg=colour235"
