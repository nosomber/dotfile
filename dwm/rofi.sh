# 打印菜单
# CC:14:BC:11:69:8F is HUAZAI
call_menu() {
    #echo 'update statusbar'
    [ "$(ps -ef | grep clash | awk '$8=="./clash-linux-amd64-v1.10.0"')" ] && echo ' close clash' || echo ' open clash'
    bluetoothctl info "C8:24:78:0A:50:5A" | grep -q "Connected: yes" && echo '󰂯 disconnect' || echo '󰂯 connect'
		echo ' google'
        echo '󱁤 toolbox'
}


# 执行菜单
execute_menu() {
    case $1 in
        #'update statusbar')
        #    coproc ($DWM/statusbar/statusbar.sh updateall > /dev/null 2>&1)
        #    ;;
        ' open clash')
			~/scripts/dwm/clash.sh open
			;;
        ' close clash')
            ~/scripts/dwm/clash.sh close
            ;;
        '󰂯 disconnect')
            ~/scripts/sys/bluetooth.sh disconnect
            ;;
        '󰂯 connect')
            ~/scripts/sys/bluetooth.sh connect
            ;;
		' google')
			google-chrome-stable --proxy-server=socks5://127.0.0.1:7891
			;;
        '󱁤 toolbox')
            /home/mi/.rec/jetbrains-toolbox-3.0.0.59313/bin/jetbrains-toolbox
    esac
}

execute_menu "$(call_menu | rofi -dmenu -p "menu")"
