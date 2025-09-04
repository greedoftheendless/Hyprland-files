# Import pywal color sequences
cat ~/.cache/wal/sequences

#Alias for yazi
alias yz = yazi

#Alias for LazyGit
alias lgit = lazygit

#Alias for zoxide
#alias cd = "z"

#Alias for cat
alias cat = "bat"

#Alias for Zed
alias zed = zeditor

#Alias for nixvim
alias nvim = nix run github:spector700/Akari

# ---- Starship prompt ----
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# ---- FZF config ----
$env.FZF_DEFAULT_COMMAND = 'fd --hidden --strip-cwd-prefix --exclude .git'
$env.FZF_CTRL_T_COMMAND = $env.FZF_DEFAULT_COMMAND
$env.FZF_ALT_C_COMMAND = 'fd --type=d --hidden --strip-cwd-prefix --exclude .git'

# Preview behavior for fzf
def __fzf_preview [path: path] {
    if ($path | path type) == "dir" {
        eza --tree --color=always $path | lines | take 200
    }
    else {
        bat --style=numbers --color=always --line-range=:500 $path
    }
}

# Zoxide (better cd)
zoxide init nushell | save -f ~/.zoxide.nu
source ~/.zoxide.nu

$env.config.show_banner = false
