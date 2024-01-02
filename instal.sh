sudo pacman -Syu

sudo yay -S xf86-video-intel xorg-server xorg-xinit xf86-input-libinput fish alacritty nano bspwm picom code flameshot rofi polybar feh sxhkd

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# dirs=$(find "$DOTFILES_DIR"/.config -mindepth 1 -type d -printf "%f\n")
dirs=$(find "$DOTFILES_DIR"/.config -mindepth 1 -type d -exec basename {} \;)


# for dir in $dirs; do
echo "$dirs"|while IFS= read -r dir; do
    ln -s "$DOTFILES_DIR/.config/$dir" "$HOME/.config/$dir" 
done

mkdir $HOME/Pictures
sudo cp "$DOTFILES_DIR/wallpaper.png" "$HOME/Pictures/wallpaper.png"

#dodaj za xorg touchpad i xresources
# u .Xresources samo stavi da je Xft 96, ovo bi terabalo da je pwd /etc/X11/xinit/.Xresources
#fali ti code config

ln -s "$DOTFILES_DIR/.Xresources" "$HOME/.Xresources" 
ln -s "$DOTFILES_DIR/.xinitrc" "$HOME/.xinitrc" 

sudo cp "$DOTFILES_DIR/etc/xorg.conf.d/30-touchpad.conf" "/etc/X11/xorg.conf.d/"

chsh -s $(which fish)

