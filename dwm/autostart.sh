#! /bin/bash
# DWM自启动脚本 仅作参考 
# 搭配 https://github.com/yaocccc/scripts 仓库使用 目录位置 ~/scripts
# 部分配置文件在 ~/scripts/config 目录下

_thisdir=$(cd $(dirname $0);pwd)

settings() {
    [ $1 ] && sleep $1
    xset -b                                     # 关闭蜂鸣器
    feh --bg-fill ~/room/photo/wallpaper/surf.png
}

daemons() {
    [ $1 ] && sleep $1
    $_thisdir/statusbar/statusbar.sh cron &     # 开启状态栏定时更新
    fcitx5 &                                    # 开启输入法
    dunst -conf ~/scripts/dwm/dunst.conf & # 开启通知server
    #redshift -P -O 5200 &
    picom --experimental-backends --config ~/scripts/dwm/picom.conf >> /dev/null 2>&1 & # 开启picom
}

settings 1 &                                  # 初始化设置项
daemons 3 &                                   # 后台程序项
