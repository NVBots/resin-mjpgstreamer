FROM resin/rpi-raspbian:wheezy-2015-04-01

RUN apt-get update
RUN apt-get upgrade

COPY . /app

# Install debian packages
RUN apt-get install -y libjpeg8-dev imagemagick libv4l-dev make

# Install mjpgstreamer
RUN ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
RUN cd /app/mjpg-streamer; make USE_LIBV4L2=true clean all

CMD ['sleep', '600']
#CMD ['/bin/bash', '/app/start.sh']
