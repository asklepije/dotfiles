# dotfiles
## enable networkmanager
sudo systemctl enable NetworkManager

sudo systemctl start NetworkManager

## skini yay
cd /otp

git clone https://aur.archlinux.org/yay.git

sudo chown -R asklepijes:asklepijes yay

cd yay

makepkg -si

##Xresources bitno i xinitrc oni su u home folderu

napravi linkove za x11