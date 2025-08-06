sudo pacman -Syu
sudo pacman -S --needed --noconfirm \
wayland qt5-wayland qt6-wayland \
hyprland \
hyprlock \
alacritty \
rofi \
polybar \
neovim \
dunst \
noto-fonts \
papirus-icon-theme \
pipewire wireplumber \
xdg-desktop-portal-hyprland \
brightnessctl \
grim \
fastfetch \
cava \
git \
flatpak

mkdir -p ~/.config/hypr/
cp ./.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
cp ./.config/hypr/hyprlock.conf ~/.config/hypr/hyprlock.conf
mkdir -p ~/.config/rofi/
cp ./.config/rofi/config.rasi ~/.config/rofi/config.rasi
mkdir -p ~/.config/cava/
cp ./.config/cava/config ~/.config/cava/config

mkdir -p ~/.config/waybar
git clone https://github.com/soaddevgit/WaybarTheme.git
mv WaybarTheme/* ~/.config/waybar/

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
cd ~
rm -rf ~/yay

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git

read -p "Reboot now. (y/N): " choice
case $choice in
    y|Y)
        sudo reboot
        ;;
    more)
        echo "Continue for optional setup"
        ;;
    *)
        exit 0
        ;;
esac

sudo pacman -S --needed --noconfirm \
pipewire \
noto-fonts-cjk \
mesa \
lib32-mesa
vulkan-radeon \
lib32-vulkan-radeon
libva-mesa-driver \
mesa-vdpau \
ffmpeg

sudo pacman -S --needed --noconfirm\
discord \
jdk8-openjdk \
jdk17-openjdk \
jdk21-openjdk \
prismlauncher \
steam \
proton-vpn-gtk-app \
keepassxc \
thunar \
thunar-archive-plugin \
hyprsunset

yay -S --needed --noconfirm \
brave-bin \
visual-studio-code-bin \
localsend-bin

flatpak install -y --noninteractive flathub \
io.mrarm.mcpelauncher \
org.vinegarhq.Sober
