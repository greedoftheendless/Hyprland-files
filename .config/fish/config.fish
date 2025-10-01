set -g fish_greeting "🦊 Welcome, $USER!"

# Simple ls aliases
alias la="eza --long --color=always -aa"

# Import pywal color sequences
cat ~/.cache/wal/sequences &

#Alias for LazyGit
alias lgit=lazygit

#Alias for Zed
alias zed=zeditor

#Alias for ls(using nu's table format)
alias ls="nu -c ls"

# ---- Starship prompt ----
starship init fish | source

# ---- Atuin ----
atuin init fish | source

# Aliases
alias cat="bat"
alias cd="z" # Requires `zoxide`

# Zoxide (better cd)
zoxide init fish | source

# Pipx user bin path
set -gx PATH $PATH $HOME/.local/bin

# Enable completion colors
set -g fish_color_autosuggestion brblack
set -g fish_color_command green
set -g fish_color_param white
set -g fish_color_comment yellow
