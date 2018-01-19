#
# ~/.xinitrc
#

# Set keypress setttings
xset r rate 225 25

# Start mpd
mpd &

# Start cava & ncmpcpp
alacritty -e ncmpcpp &
alacritty -e cava &

# Start xbindkeys
xbindkeys -f $XDG_CONFIG_HOME/xbindkeys/config &

# Start compton
compton --config $HOME/.config/compton/config &

# Read Xresources
xrdb $XDG_CONFIG_HOME/Xresources/config

# Set wallpaper
feh --bg-fill --no-fehbg ~/img/wal/background &

# Start polybar
polybar examplebar &

# Start NetworkManager applet
nm-applet &

# Start our window manager
exec herbstluftwm --locked


