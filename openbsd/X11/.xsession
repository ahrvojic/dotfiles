LC_CTYPE="en_US.UTF-8"

export ENV=$HOME/.kshrc

xrdb -merge "$HOME/.Xresources" &
picom --backend glx --vsync &
jwm
