FROM ubuntu:latest

RUN	apt-get update && \
	apt-get install --no-install-recommends --yes \
		gcc-arm-none-eabi \
		binutils-arm-none-eabi \
		gdb \
		stm32flash \
		openocd \
		cmake \
		make \
		dfu-util

ENTRYPOINT /bin/bash