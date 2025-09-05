set -g fish_greeting "Welcome, $USER!"

# Import pywal color sequences
cat ~/.cache/wal/sequences &

#Alias for yazi
alias yz=yazi

#Alias for LazyGit
alias lgit=lazygit

#Alias for Zed
alias zed=zeditor

#Alias for nixvim
alias nvim "nix run github:spector700/Akari"

# ---- Starship prompt ----
starship init fish | source

# ---- FZF config ----
set -gx FZF_DEFAULT_COMMAND 'fd --hidden --strip-cwd-prefix --exclude .git'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_ALT_C_COMMAND 'fd --type=d --hidden --strip-cwd-prefix --exclude .git'

# Preview behavior for fzf
function __fzf_preview
  if test -d $argv[1]
    eza --tree --color=always $argv[1] | head -n 200
  else
    bat -n --color=always --line-range :500 $argv[1]
  end
end

# Aliases
alias ll="eza --color=always --icons=always --git --tree --only-dirs --level=1"
alias ls="eza --color=always --icons=always --git"
alias lsa="eza --color=always --icons=always --git --tree --only-dirs --level=1 --all"
alias cat="bat"
alias cd="z"  # Requires `zoxide`

# Zoxide (better cd)
zoxide init fish | source

# Pipx user bin path
set -gx PATH $PATH $HOME/.local/bin

# Ctrl+Arrow key word movement
bind \e\[1\;5C forward-word
bind \e\[1\;5D backward-word

# Enable completion colors
set -g fish_color_autosuggestion brblack
set -g fish_color_command green
set -g fish_color_param white
set -g fish_color_comment yellow
