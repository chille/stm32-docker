STM32 development environment in Docker
=======================================

This container bundles a fully working STM32 development environment inside a Docker container.

<!--
Read more about why this is a good idea in my article about [STM32 development with Docker](https://chille.se/articles/stm32-docker).
-->

This container bundles the following software:
 * Compiler (gcc, binutils)
 * Debugger (gdb)
 * Build tools (make and cmake)
 * Flashing utils (dfu-util, stm32flash, openocd)


How to use the container
------------------------

First of all you need to build the image for the Docker container

```./build.sh```

Then you need a startup script for the container

Then it's time to start the container. You should copy start.sh into your project directory and change the paths inside it. The startup script use an --rm option that will stop and remove the Docker container as soon as you press ctrl+c. You will need the startup script to run at all the time when doing development.

```./start.sh```

When the container is up and running you could use ```docker exec``` to execute a compile script in your project directory, run cmake, make, or whatever you prefer.