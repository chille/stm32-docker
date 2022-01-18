#!/bin/bash

docker run \
	--rm \
	--name stm32-compiler \
	-u 1000:1000 \
	--privileged \
	-v /dev/bus/usb:/dev/bus/usb \
	-v /home/user/Git/stm32-lib:/mnt/lib \
	-v /home/user/Git/myproject:/mnt/src \
	-it \
	stm32-compiler