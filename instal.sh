sudo pacman -Syu

sudo yay -S xf86-video-intel xorg-server xorg-xinit xf86-input-libinput fish alacritty nano bspwm picom code flameshot rofi polybar ttf-material-design-icons-git

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#ln -s "$DOTFILES_DIR/.config"/* "$HOME/.config"
for dir in "$DOTFILES_DIR"/.config/*; do

  # Only run on directories
  if [ -d "$dir" ]; then

    # # Get directory name 
    # dir_name="$(basename "$dir")"

    # Copy directory
    cp -r "$dir" "$HOME/.config/$dir"

    # Create symlink to copied directory
    ln -s "$DOTFILES_DIR/.config/$dir "$HOME_DIR/.config/$dir" 

  fi

done

#dodaj za xorg touchpad i xresources
# u .Xresources samo stavi da je Xft 96, ovo bi terabalo da je pwd /etc/X11/xinit/.Xresources

sudo cp "$DOTFILES_DIR/etc/xorg.conf.d/30-touchpad.conf" "/etc/X11/xorg.conf.d/"

chsh -s $(which fish)

