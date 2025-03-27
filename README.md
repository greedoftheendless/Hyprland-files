## Setup instructions
  Install essential packages
    
    yay paru home-brew kitty zsh swww hyprpanel waypaper-engine hyprlock hypridle hyprpaper rofi starfield picom wlogout neovim git fzf eza btop cava  stow pywal(wal)

  Package wise instructions

->zsh
This is gonna be the main shell your using. Next we have to install Oh-my-zsh by typing oh-my-zsh.git. After that you can go to your ~/.zshrc file and search for a line that says plugin. There you can add plugins such as git, syntax highlight, history, autocorrect etc... Or after downloading the dependencies, you can go to the dotfiles folder and enter:

    stow .
This will stow all the files in dotfiles directory making my files yours and syncing all the changes done. 
For more information on stow, google it or search stow official page.

Using my .zshrc you will fzf(fuzzy file finder tool in terminal), eza(better ls), atuin(Better history), etc...

