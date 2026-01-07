xbindkeys
keyd-application-mapper -d

xrandr --dpi 120
export GDK_SCALE=1.25
exportt GDK_DPI_SCALE=1

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=1.25

export XFT_DPI=120

xrdb -merge ~/.Xresources

export DWM=~/.rec/dwm

exec dwm
