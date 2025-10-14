#!/bin/sh

#!/bin/sh

MAC="C8:24:78:0A:50:5A"

case "$1" in
  connect)
    bluetoothctl << EOF
power on
agent on
default-agent
connect $MAC
quit
EOF
    ;;
  disconnect)
    bluetoothctl << EOF
disconnect $MAC
quit
EOF
    ;;
  *)
    echo "用法: $0 [connect|disconnect]"
    exit 1
    ;;
esac

