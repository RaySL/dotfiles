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
xbindkeys -f $HOME/.config/xbindkeys/config &

# Start compton
compton --config $HOME/.config/compton/config &

# Read Xresources
xrdb $HOME/.config/Xresources/config

# Set wallpaper
feh --bg-fill --no-fehbg ~/img/wal/background &

# Start polybar
polybar examplebar &

# Start NetworkManager applet
nm-applet &

# Start xautolock
xautolock -time 20 -locker "i3lock-fancy -- scrot -z" &

# Start our window manager
exec herbstluftwm --locked


