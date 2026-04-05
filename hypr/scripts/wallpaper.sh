#!/usr/bin/env bash
echo "Wallpaper: $1" >> /tmp/wallpaper.log
awww img "$1"
wal -i "$1" -n -q
# Generate waybar colors.css from pywal
source ~/.cache/wal/colors.sh
cat > ~/.config/waybar/colors.css << EOF
@define-color bg0 $color0;
@define-color bg1 $color0;
@define-color bg2 $color1;
@define-color bg3 $color2;
@define-color bg4 $color3;
@define-color surface $color8;
@define-color fg $foreground;
@define-color red $color1;
@define-color orange $color3;
@define-color yellow $color4;
@define-color green $color2;
@define-color aqua $color6;
@define-color blue $color4;
@define-color purple $color5;
@define-color gray0 $color7;
@define-color gray1 $color8;
@define-color gray2 $color8;
EOF

# Update Hyprland borders
source ~/.cache/wal/colors.sh
hyprctl keyword general:col.active_border "rgb(${color2//#/})"
hyprctl keyword general:col.inactive_border "rgb(${color0//#/})"

# Update rofi colors
cat > ~/.config/rofi/colors/pywal.rasi << EOF
* {
    background:     ${background}FF;
    background-alt: ${color0}FF;
    foreground:     ${foreground}FF;
    selected:       ${color2}FF;
    active:         ${color3}FF;
    urgent:         ${color1}FF;
}
EOF

# Update swaync colors
cat > ~/.config/swaync/colors.css << EOF
@define-color bg0 ${color0};
@define-color bg1 ${color8};
@define-color bg2 ${color1};
@define-color bg3 ${color2};
@define-color bg4 ${color3};
@define-color fg ${foreground};
@define-color red ${color1};
@define-color orange ${color3};
@define-color yellow ${color4};
@define-color green ${color2};
@define-color aqua ${color6};
@define-color blue ${color4};
@define-color purple ${color5};
@define-color gray0 ${color7};
@define-color gray1 ${color8};
@define-color gray2 ${color8};
EOF
swaync-client -R

pkill swaync; sleep 0.5 && swaync &
