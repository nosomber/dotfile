#!/bin/bash
# 获取 theme 的值
theme=`awk -F "\"" '{ if(NR==2) print $2 }' /home/mi/scripts/sys/temp` 

if [ $theme == "light" ]; then 
    # st
    cd /home/mi/.rec/st
    sed -i '141,164s/^/\/\//'  config.h   # 在指定行前添加 //
    sed -i '113,138s/.\{2\}//' config.h   # 删除指定行前两个字符
    sudo make clean install

    # zsh
    cd /home/mi/ 
    sed -i '7s/^/\#/' .zshrc
    sed -i '6s/.\{1\}//' .zshrc
   
    # nvim 
    cd /home/mi/.config/nvim 
    sed -i '5s/^/\-\-/' init.lua
    sed -i '4s/.\{2\}//' init.lua

    # wallpaper
    feh --bg-fill /home/mi/gato/pictures/wallpapers/cat/dark-cat.png 

    # fcitx5
    cd /home/mi/.config/fcitx5/conf 
    sed -i '22s/^/\#/' classicui.conf 
    sed -i '23s/.\{1\}//' classicui.conf
    kill `ps -A | grep fcitx5 | awk '{print $1}'` && fcitx5 >> /dev/null 2>&1 &  # 重启 fcitx5, /dev/null 是一个黑洞文件
                                                                                 # 2> 指错误输出，&1 指和1一样， 1 表示标准输出 


    cd /home/mi/scripts/sys
    awk -v var="$theme" '{ gsub(var, "dark"); print }' temp > new_temp && mv new_temp temp  # 在 awk 里使用shell变量的方法
    exit
else  # change to light
    cd /home/mi/.rec/st
    sed -i '113,138s/^/\/\//' config.h 
    sed -i '141,164s/.\{2\}//' config.h 
    sudo make clean install
    # zsh
    cd /home/mi/ 
    sed -i '6s/^/\#/' .zshrc
    sed -i '7s/.\{1\}//' .zshrc
    # nvim 
    cd /home/mi/.config/nvim 
    sed -i '4s/^/\-\-/' init.lua
    sed -i '5s/.\{2\}//' init.lua

    # wallpaper
    feh --bg-fill /home/mi/gato/pictures/wallpapers/cat/rosewater-cat.png 

    # fcitx5
    cd /home/mi/.config/fcitx5/conf
    sed -i '23s/^/\#/' classicui.conf
    sed -i '22s/.\{1\}//' classicui.conf
    kill `ps -A | grep fcitx5 | awk '{print $1}'` && fcitx5 >> /dev/null 2>&1 &

    cd /home/mi/scripts/sys/
    awk -v var="$theme" '{ gsub(var, "light"); print }' temp > new_temp && mv new_temp temp
    exit
fi
