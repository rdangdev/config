#
# [[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources
# [ ! -f $HOME/.config/mpd/pid ] && mpd

# Launch on startx
dunst 2>&1 &
dwmblocks 2>&1 &
picom 2>&1 &
xbanish 2>&1 &
mpd --no-daemon >/dev/null 2>&1 &
xautolock -time 3 -locker betterlock 2>&1 &
# ibus-daemon -drx &
# sxhkd &
fehbg &
# pywal 2>&1
sleep 2; scale1920

# Disable 1-Tap Power Button
# xinput disable 8
# xinput disable 6

# increase key speed
xset r rate 300 50

# Swap Caps and Escape for easier Vim use
setxkbmap -option caps:swapescape
# setxkbmap -option ctrl:nocaps
# setxkbmap -layout "$(setxkbmap -print | awk -F + '/xkb_symbols/ {print $2}')" -option ctrl:swapcaps

# apply .Xresources
# xrdb -merge ~/.Xresources

# Rehash fonts and add local directory to font PATH
xset +fp /home/ray13/.local/share/fonts
xset fp rehash

# run dwm
while :; do
  /usr/local/bin/dwm >/dev/null 2>&1
done

# while :; do
#     /usr/bin/xmonad >/dev/null 2>&1
# done
