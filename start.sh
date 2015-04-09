#!/bin/bash

echo 'resin-mjpgstreamer launching...'
/app/mjpg-streamer/mjpg_streamer -i "/app/mjpg-streamer/input_uvc.so -f 10 -r 1280x720" -o "/app/mjpg-streamer/output_http.so -w /app/mjpg-streamer/www"
# /app/mjpg-streamer/mjpg_streamer -i "/app/mjpg-streamer/input_uvc.so -f 10 -r 1280x720" -o "/app/mjpg-streamer/output_http.so -w /app/mjpg-streamer/www -c $USERNAME:$PASSWORD"
echo 'resin-mjpgstreamer sleeping for terminal access'
sleep 600
echo 'resin-mjpgstreamer exiting'
