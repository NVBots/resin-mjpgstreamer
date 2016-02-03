#!/bin/bash

if [ -z ${USERNAME+x} ]; then
  auth=""
else
  auth="-c $USERNAME:$PASSWORD"
fi

if [ -z ${FRAMERATE+x} ]; then
  framerate=10
else
  framerate=$FRAMERATE
fi

if [ -z ${RESOLUTION+x} ]; then
  resolution=1280x720
else
  resolution=$RESOLUTION
fi

if [ -z ${USE_RASPICAM+x} ]; then
  input="/app/mjpg-streamer/input_uvc.so -f $framerate -r $resolution"
else
  modprobe bcm2835-v4l2
  input="/app/mjpg-streamer/input_raspicam.so -fps $framerate -r $resolution"
fi


echo 'resin-mjpgstreamer launching...'
/app/mjpg-streamer/mjpg_streamer -i "$input" -o "/app/mjpg-streamer/output_http.so -w /app/mjpg-streamer/www -p 80 $auth"

echo 'resin-mjpgstreamer sleeping for terminal access'
sleep 600
echo 'resin-mjpgstreamer exiting'
