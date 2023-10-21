# Set your desired opacity value (0.0 for fully transparent, 1.0 for fully opaque)
opacity=1.0

# Update the Kitty configuration file with the new opacity value
sed -i "s/background_opacity .*/background_opacity $opacity/" ~/.config/kitty/user_kitty.conf

# Restart kitty using a shortcut
xdotool key ctrl+shift+F5
