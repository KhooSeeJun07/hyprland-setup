sudo pacman -S --needed --noconfirm \
hyprland \
hyprlock \
kitty \
rofi \
waybar \

mkdir -p ~/.config/hypr/
cp ./config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
cp ./config/hypr/hyprlock.conf ~/.config/hypr/hyprlock.conf
mkdir -p ~/.config/kitty/
cp ./config/kitty/kitty.conf ~/.config/kitty/kitty.conf
mkdir -p ~/.config/rofi/
cp ./config/rofi/config.rasi ~/.config/rofi/config.rasi
mkdir -p ~/.config/waybar/
cp ./config/waybar/config ~/.config/waybar/config
cp ./config/waybar/style.css ~/.config/waybar/style.css
