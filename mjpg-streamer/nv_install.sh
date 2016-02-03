#!/usr/bin/env bash

apt-get update && apt-get install -y libav-tools libjpeg8-dev imagemagick libv4l-dev libraspberrypi-dev cmake

ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h

cp -r . /app/mjpg-streamer

cd /app/mjpg-streamer; make USE_LIBV4L2=true clean input_uvc.so output_http.so install

# next line will fail if not on raspi
cd /app/mjpg-streamer; make USE_LIBV4L2=true input_raspicam.so install
