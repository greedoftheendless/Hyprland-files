{ pkgs, ... }:

{
  programs.helix = {
    
    settings = {
      theme = "catppuccin_mocha"; # User can change this later
      editor = {
        line-number = "relative";
        mouse = false;
        lsp.display-messages = true;
      };
      keys.normal = {
        "space" = { "t" = ":sh tmux-sessionizer" ; };
      };
    };
    languages = {
      language-server = {
        pylsp = {
          command = "pylsp";
        };
        gopls = {
          command = "gopls";
        };
        nil = {
          command = "nil";
        };
        bash-language-server = {
          command = "bash-language-server";
          args = ["start"];
        };
      };
      language = [
        {
          name = "python";
          language-servers = [ "pylsp" ];
        },
        {
          name = "go";
          language-servers = [ "gopls" ];
        },
        {
          name = "nix";
          language-servers = [ "nil" ];
        },
        {
          name = "bash";
          language-servers = [ "bash-language-server" ];
        }
      ];
    };
    extraPackages = with pkgs; [
      pylsp
      gopls
      nil
      bash-language-server
    ];
  };
}
