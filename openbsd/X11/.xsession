export LANG=en_US.UTF-8
export ENV=$HOME/.zshrc

xrdb -merge "$HOME/.Xresources" &
xset b off
setxkbmap -option ctrl:nocaps

picom --backend glx --vsync &
jwm

