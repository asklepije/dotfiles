sudo pacman -Syu

sudo yay -S xf86-video-intel xorg-server xorg-xinit xf86-input-libinput fish alacritty nano bspwm picom code flameshot rofi polybar 

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#ln -s "$DOTFILES_DIR/.config"/* "$HOME/.config"
dirs=$(find "$DOTFILES_DIR"/.config -mindepth 1 -type d -printf "%f\n")
echo $dirs
# Loop through list
for dir in $dirs; do

  # Only run on directories

    # # Get directory name 
    # dir_name="$(basename "$dir")"

    # Copy directory
    # cp -r "$DOTFILES_DIR/.config/$dir" "$HOME/.config/$dir"

    # Create symlink to copied directory
    ln -s "$DOTFILES_DIR/.config/$dir" "$HOME_DIR/.config/$dir" 


done

#dodaj za xorg touchpad i xresources
# u .Xresources samo stavi da je Xft 96, ovo bi terabalo da je pwd /etc/X11/xinit/.Xresources

sudo cp "$DOTFILES_DIR/etc/xorg.conf.d/30-touchpad.conf" "/etc/X11/xorg.conf.d/"

chsh -s $(which fish)

