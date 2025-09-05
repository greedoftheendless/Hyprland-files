# Source environment variables first
source functions/env.nu

# Source core functionality
source functions/starship.nu
source functions/zoxide.nu
source functions/pywal.nu

# Source convenience features
source functions/aliases.nu
source functions/fzf.nu
source functions/fzf_helpers.nu
source functions/keybindings.nu
source functions/greeting.nu

#Hide elephant banner
$env.config.show_banner = false

# Show custom greeting
greeting
