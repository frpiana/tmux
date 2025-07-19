# TEMA TOKYO NIGHT ARMONIZZATO CON GHOSTTY
set -g status-style bg="#1a2130",fg="#c0cdd9"
set -g status-left "#[fg=#1a2130,bg=#6b94dd,bold] #S "
set -g status-right "#[fg=#1a2130,bg=#6b94dd,bold] #H "

# Finestre
setw -g window-status-current-style fg="#1a2130",bg="#6b94dd",bold
setw -g window-status-current-format " #I:#W "
setw -g window-status-style fg="#c0cdd9",bg="#1a2130"
setw -g window-status-format " #I:#W "

# Bordi pannelli
set -g pane-border-style fg="#3b4261"
set -g pane-active-border-style fg="#6b94dd"

# Messaggi
set -g message-style bg="#6b94dd",fg="#1a2130"
