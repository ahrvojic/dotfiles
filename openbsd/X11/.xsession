export LANG=en_US.UTF-8

xrdb -merge "$HOME/.Xresources" &
xset b off
setxkbmap -option ctrl:nocaps

jwm
