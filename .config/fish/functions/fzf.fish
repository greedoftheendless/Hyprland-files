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
