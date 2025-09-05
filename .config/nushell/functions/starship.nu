# Minimal Nushell configuration with only Starship prompt setup

# ---- Starship prompt ----
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
