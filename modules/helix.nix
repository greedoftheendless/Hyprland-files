{ pkgs, ... }:

{
  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "relative"; # Show relative line numbers
        mouse = false; # Disable mouse support for keyboard-only workflow
        lsp.display-messages = true; # Show LSP diagnostic messages
        file-picker.hidden = false; # Show hidden files in file picker
        auto-save = true; # Auto-save files on focus loss
        cursor-shape.insert = "line"; # Bar cursor in insert mode
        cursor-shape.normal = "block"; # Block cursor in normal mode
        cursor-shape.select = "underline"; # Underline cursor in select mode
      };
      keys.normal = {
        "space" = {
          # Telescope-like fuzzy finding
          "f" = "file_picker"; # Find files (like Telescope find_files)
          "F" = "file_picker_in_current_directory"; # Find files in current dir
          "b" = "buffer_picker"; # Switch buffers (like Telescope buffers)
          "s" = "symbol_picker"; # Find symbols in file
          "/" = "global_search"; # Search in all files (like Telescope live_grep)
          "g" = {
            "f" = "file_picker"; # Global file picker
            "s" = "workspace_symbol_picker"; # Find symbols in workspace
            "g" = "goto_definition"; # Go to definition
          };
          "e" = "file_picker_in_current_directory"; # Explorer-like file picker
          "r" = "recent_files"; # Recently opened files
        };
      };
    };

    languages = {
      language-server = {
        gopls = {
          command = "gopls"; #
        };
        nil = {
          command = "nil";
        };
        bash-language-server = {
          command = "bash-language-server"; #
          args = ["start"];
        };
      };
      language = [
        {
          name = "go";
          language-servers = [ "gopls" ];
          auto-format = true;
        }
        {
          name = "nix";
          language-servers = [ "nil" ];
          auto-format = true;
        }
        {
          name = "bash";
          language-servers = [ "bash-language-server" ];
          auto-format = false;
        }
      ];
    };

    # Language server packages and tree-sitter support
    extraPackages = with pkgs; [
      # Language Servers
      gopls                    # Go language server - provides completion, diagnostics, formatting
      nil                      # Nix language server - Nix file support with LSP features
      bash-language-server     # Bash language server - shell script analysis and completion

      # Formatters (for better syntax highlighting and formatting)
      nixfmt
      shellcheck              #Improves bash highlighting

      # Use 'hx -g fetch' and 'hx -g build' to install/update grammars
    ];
  };
}
