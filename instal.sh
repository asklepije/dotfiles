sudo pacman -Syu

sudo yay -S xf86-video-intel xorg-server xorg-xinit xf86-input-libinput fish alacritty nano bspwm picom code flameshot rofi polybar

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/dotfiles"

ln -s "$DOTFILES_DIR/.config" "$HOME/.config"

#dodaj za xorg touchpad i xresources
# u .Xresources samo stavi da je Xft 96, ovo bi terabalo da je pwd /etc/X11/xinit/.Xresources

chsh -s $(which fish)
