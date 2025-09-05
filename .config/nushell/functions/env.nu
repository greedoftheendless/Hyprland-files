# Minimal Nushell configuration with environment variables

# Add pipx user bin path to PATH
$env.PATH = ($env.PATH | split row (char esep) | prepend $"($env.HOME)/.local/bin")
