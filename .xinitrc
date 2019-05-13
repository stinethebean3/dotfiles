# Tell gpg about graphical environment
gpg-connect-agent updatestartuptty /bye

# Enable xorg settings, fonts etc
xrdb -merge ~/.Xresources 

# Load system-specific keyboard/screen config
host_config="$HOME/.host_config/$(cat /etc/hostname)"
[[ -f "$host_config/screenlayout.sh" ]] && source "$host_config/screenlayout.sh"

# Set Wallpaper
nitrogen --restore #loads wallpaper

# Launch Browser
chromium & 

# Launch Terminal
kitty &

# Start compositer
# makes 3D and tranparent terminals work
compton &

# Start Window Manager
i3
