{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "JetBrainsMono Nerd Font";
      font-size = 14;
      cursor-style = "bar";
      cursor-color = "F5E0DC";
      command = "fish";
      background-opacity = 0.9;
      foreground = "CDD6F4";
      background = "1E1E2E";
      selection-foreground = "1E1E2E";
      selection-background = "F5E0DC";
      window-height = 510;
      window-width = 1640;
      palette = [
        "0=45475A"
        "1=F38BA8"
        "2=A6E3A1"
        "3=F9E2AF"
        "4=89B4FA"
        "5=F5C2E7"
        "6=94E2D5"
        "7=BAC2DE"
        "8=585B70"
        "9=F38BA8"
        "10=A6E3A1"
        "11=F9E2AF"
        "12=89B4FA"
        "13=F5C2E7"
        "14=94E2D5"
        "15=A6ADC8"
      ];
      keybind = [
        "ctrl+shift+plus=equalize_splits"
        "ctrl+shift+up=resize_split:up,5"
        "ctrl+shift+down=resize_split:down,5"
        "ctrl+shift+right=resize_split:right,5"
        "ctrl+shift+left=resize_split:left,5"
        "ctrl+alt+shift+j=write_screen_file:open"
        "super+ctrl+left_bracket=goto_split:previous"
        "super+ctrl+right_bracket=goto_split:next"
        "ctrl+up=goto_split:up"
        "ctrl+down=goto_split:down"
        "ctrl+right=goto_split:right"
        "ctrl+left=goto_split:left"
        "ctrl+shift+a=select_all"
        "ctrl+shift+c=copy_to_clipboard"
        "ctrl+shift+e=new_split:down"
        "ctrl+shift+i=inspector:toggle"
        "ctrl+shift+j=write_screen_file:paste"
        "ctrl+shift+n=new_window"
        "ctrl+shift+o=new_split:right"
        "ctrl+shift+q=quit"
        "alt+t=new_tab"
        "ctrl+shift+v=paste_from_clipboard"
        "alt+q=close_tab"
        "ctrl+shift+comma=reload_config"
        "ctrl+shift+right=next_tab"
        "ctrl+shift+left=previous_tab"
        "ctrl+shift+page_up=jump_to_prompt:-1"
        "ctrl+shift+page_down=jump_to_prompt:1"
        "ctrl+shift+enter=toggle_split_zoom"
        "ctrl+shift+tab=previous_tab"
        "alt+one=goto_tab:1"
        "alt+two=goto_tab:2"
        "alt+three=goto_tab:3"
        "alt+four=goto_tab:4"
        "alt+five=goto_tab:5"
        "alt+six=goto_tab:6"
        "alt+seven=goto_tab:7"
        "alt+eight=goto_tab:8"
        "alt+nine=last_tab"
        "alt+f4=close_window"
        "ctrl+zero=reset_font_size"
        "ctrl+comma=open_config"
        "ctrl+minus=decrease_font_size:1"
        "ctrl+plus=increase_font_size:1"
        "ctrl+equal=increase_font_size:1"
        "ctrl+insert=copy_to_clipboard"
        "ctrl+page_up=previous_tab"
        "ctrl+page_down=next_tab"
        "ctrl+enter=toggle_fullscreen"
        "ctrl+tab=next_tab"
        "shift+up=adjust_selection:up"
        "shift+down=adjust_selection:down"
        "shift+right=adjust_selection:right"
        "shift+left=adjust_selection:left"
        "shift+home=scroll_to_top"
        "shift+end=scroll_to_bottom"
        "shift+insert=paste_from_selection"
        "shift+page_up=scroll_page_up"
        "shift+page_down=scroll_page_down"
      ];
    };
  };

  home.packages = with pkgs; [
    ghostty
  ];
}
