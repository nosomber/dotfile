#!/bin/sh

bl_device=/sys/class/backlight/amdgpu_bl1/brightness
max=$(cat /sys/class/backlight/amdgpu_bl1/max_brightness)

update() {
    bri=$(cat $bl_device)
    rate=$(( bri * 100 / max ))  # 计算百分比
}

notify() {
    update
    notify-send -r 9527 -h int:value:$rate -h string:hlcolor:#dddddd "Brightness: $rate%"
}

case "$1" in
    up) 
        update
        if [ $rate -lt 100 ]; then
            new_bri=$(( bri + max * 2 / 100 ))  # 增加亮度
            echo $new_bri | sudo tee $bl_device
        fi
        notify
        ;;
    down) 
        update
        if [ $rate -gt 0 ]; then
            new_bri=$(( bri - max * 2 / 100 ))  # 减少亮度
            echo $new_bri | sudo tee $bl_device
        fi
        notify
        ;;
esac
