export ENV=$HOME/.kshrc
xrdb -merge "$HOME/.Xresources" &
picom --backend glx --vsync &
jwm
