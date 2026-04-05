# 🌸 isleap's dotfiles

A Hyprland rice with dynamic wallpaper-driven theming via pywal, centered island Waybar, and a clean minimal aesthetic.

---

## 📸 Preview

> Add your screenshots here!

---

## 🖥️ System Info

| | |
|---|---|
| **OS** | Arch Linux |
| **WM** | Hyprland |
| **Bar** | Waybar |
| **Terminal** | Kitty |
| **Shell** | Zsh |
| **Launcher** | Rofi |
| **Notifications** | Swaync |
| **Wallpaper** | Waypaper + awww |
| **Theming** | pywal |
| **Cursor** | Bibata-Modern-Ice |
| **GPU** | NVIDIA (nvidia-open-dkms) |

---

## 📦 Packages

### 🪟 Hyprland & WM
```
hyprland hyprpolkitagent hyprshot
```

### 📊 Bar & Notifications
```
waybar swaync
```

### 🖼️ Wallpaper & Theming
```
awww waypaper python-pywal matugen
```

### 🚀 App Launcher
```
rofi
```

### 💻 Terminal
```
kitty
```

### 🔤 Fonts
```
ttf-rubik-vf
ttf-jetbrains-mono-nerd
ttf-firacode-nerd
ttf-nerd-fonts-symbols
otf-font-awesome
noto-fonts-cjk
```

### 🔊 Audio
```
pipewire pipewire-alsa pipewire-jack pipewire-pulse
wireplumber pavucontrol libpulse
```

### 📡 Bluetooth & Network
```
bluez bluez-utils network-manager-applet networkmanager
```

### 🖱️ Cursor
```
bibata-cursor-theme
```

### 🛠️ Utilities
```
wl-clip-persist wlogout nwg-look nwg-displays
starship fastfetch htop nano git wget
```

### 🎮 GPU (NVIDIA)
```
nvidia-open-dkms nvidia-settings libva-nvidia-driver
```

### 🌐 Apps
```
firefox google-chrome visual-studio-code-bin
pavucontrol nautilus
```

---

## 🎨 Dynamic Theming

This rice uses **pywal** to generate colors from your wallpaper and automatically update:

- Waybar colors
- Swaync colors
- Rofi colors
- Hyprland border colors
- Kitty terminal colors

Wallpapers are stored in `~/Pictures/Wallpapers/`. Select a wallpaper with **Waypaper** and everything updates automatically.

---

## ⌨️ Keybinds

| Keybind | Action |
|---|---|
| `Super + A` | Open app launcher (Rofi) |
| `Super + W` | Open wallpaper selector (Waypaper) |
| `Super + N` | Toggle notification center (Swaync) |
| `Super + T` | Open terminal (Kitty) |
| `Super + E` | Open file manager |
| `Super + Shift + S` | Screenshot region |

---

## 🚀 Installation

1. Clone the repo:
```bash
git clone git@github.com:isleap9/dotfiles.git ~/dotfiles
```

2. Copy configs:
```bash
cp -r ~/dotfiles/hypr ~/.config/
cp -r ~/dotfiles/waybar ~/.config/
cp -r ~/dotfiles/rofi ~/.config/
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/swaync ~/.config/
cp -r ~/dotfiles/matugen ~/.config/
cp -r ~/dotfiles/waypaper ~/.config/
cp -r ~/dotfiles/wlogout ~/.config/
```

3. Install packages (see above) with `yay`.

4. Make wallpaper script executable:
```bash
chmod +x ~/.config/hypr/scripts/wallpaper.sh
```

5. Log into Hyprland and select a wallpaper with Waypaper to generate your theme.

---

## 📁 Structure

```
dotfiles/
├── hypr/          # Hyprland config + keybinds + scripts
├── waybar/        # Waybar config + styles
├── rofi/          # Rofi launcher + themes
├── kitty/         # Kitty terminal config
├── swaync/        # Swaync notification center
├── matugen/       # Matugen templates
├── waypaper/      # Waypaper config
└── wlogout/       # Wlogout logout screen
```
