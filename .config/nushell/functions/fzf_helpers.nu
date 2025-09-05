# FZF helper functions for Nushell

# Ctrl+T - File search with preview
def fzf-file [] {
    let file = (fd --type f --hidden --exclude .git | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}')
    if ($file | is-empty) {
        ""
    } else {
        $file
    }
}

# Ctrl+R - History search
def fzf-history [] {
    let cmd = (history | get command | reverse | uniq | fzf)
    if ($cmd | is-empty) {
        ""
    } else {
        $cmd
    }
}

# Alt+C - Directory search and change
def fzf-cd [] {
    let dir = (fd --type d --hidden --exclude .git | fzf --preview 'eza --tree --color=always {} | head -200')
    if not ($dir | is-empty) {
        cd $dir
    }
}

# Insert file path at cursor (for Ctrl+T)
def fzf-insert-file [] {
    let file = (fzf-file)
    if not ($file | is-empty) {
        $file
    }
}

# Replace command line with history selection (for Ctrl+R)
def fzf-replace-history [] {
    let cmd = (fzf-history)
    if not ($cmd | is-empty) {
        $cmd
    }
}

# Hide the banner for cleaner startup
$env.config.show_banner = false
