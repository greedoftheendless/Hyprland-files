# Nushell key bindings configuration

# Set up key bindings in config
$env.config = ($env.config | default {} | merge {
    keybindings: [
        # Ctrl+T - File finder
        {
            name: fzf_file_finder
            modifier: control
            keycode: char_t
            mode: [emacs vi_normal vi_insert]
            event: {
                send: executehostcommand
                cmd: 'let file = (fd --type f --hidden --exclude .git | fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"); if ($file != null and ($file | str length) > 0) { $file } else { "" }'
            }
        }
        # Ctrl+R - History search
        {
            name: fzf_history_search
            modifier: control
            keycode: char_r
            mode: [emacs vi_normal vi_insert]
            event: {
                send: executehostcommand
                cmd: 'let cmd = (history | get command | reverse | uniq | fzf); if ($cmd != null and ($cmd | str length) > 0) { $cmd } else { "" }'
            }
        }
    ]
})

# Alt+C function for directory change (call manually with Alt+C or use as command)
def fzf-cd [] {
    let dir = (fd --type d --hidden --exclude .git | fzf --preview 'eza --tree --color=always {} | head -200')
    if ($dir != null and ($dir | str length) > 0) {
        cd $dir
    }
}

# Create aliases for manual use
alias fcd = fzf-cd
alias ff = fd --type f --hidden --exclude .git | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'

# Hide the banner for cleaner startup
$env.config.show_banner = false
