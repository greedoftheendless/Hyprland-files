{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      # Greeting
      set -g fish_greeting "🦊 Welcome, $USER!"

      # Simple ls aliases
      alias la="eza --long --color=always -aa"

      # LazyGit and Zed
      alias lgit=lazygit
      alias zed=zeditor

      # ls using nu
      alias ls="nu -c ls"

      # Starship prompt
      starship init fish | source

      # Atuin shell history
      atuin init fish | sed 's/-k up/up/' | source

      # Other aliases
      alias cat="bat"
      alias cd="z"  # requires zoxide

      # Zoxide integration
      zoxide init fish | source

      # Pipx user bin path
      set -gx PATH $PATH $HOME/.local/bin

      # Enable completion colors
      set -g fish_color_autosuggestion brblack
      set -g fish_color_command green
      set -g fish_color_param white
      set -g fish_color_comment yellow

      # Universal variables (example subset)
      set -U fish_color_cancel -r
      set -U fish_color_command normal
      set -U fish_color_comment red
      set -U fish_color_user brgreen
      set -U fish_user_paths /nix/store/i24mfkgsg2zjqh0jasw2pw3jxjqldp-ghostty-1.2.2/bin
    '';
  };
}