FROM resin/rpi-raspbian:wheezy-2015-04-01

RUN apt-get update

# Install debian packages
RUN apt-get install -y libjpeg8-dev imagemagick libv4l-dev make cmake g++ build-essential libraspberrypi-dev

# Install mjpgstreamer
COPY mjpg-streamer /app/mjpg-streamer
RUN ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
RUN cd /app/mjpg-streamer; make USE_LIBV4L2=true clean all

COPY start.sh /app/start.sh
CMD ["/bin/bash", "/app/start.sh"]
