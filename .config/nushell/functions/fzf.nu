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
