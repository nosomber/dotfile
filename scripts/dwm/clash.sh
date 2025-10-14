#!/bin/sh

pid=`ps -ef |grep clash | awk '$8=="./clash-linux-amd64-v1.10.0" {print $2}'`
echo $pid
if [ $1 == "open" ]; then
		if [ "$(ps -ef | grep clash | awk '$8=="./clash-linux-amd64-v1.10.0"')" ]; then
				break
		else
				cd ~/.rec/clash
				chmod +x ./clash-linux-amd64-v1.10.0
				./clash-linux-amd64-v1.10.0 -f glados.yaml -d .
		fi
fi
if [ $1 == "close" ]; then
		if [ "$(ps -ef | grep clash | awk '$8=="./clash-linux-amd64-v1.10.0"')" ]; then
				kill -9 $pid
		else
				break
		fi
fi
						
		
