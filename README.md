# resin-mjpgstreamer
Raspberry Pi mjpg-streamer using resin.io


Instructions:

First, create a resin.io application and write the image to an SD card.

In the resin.io dashboard, set two environment variables: USERNAME and PASSWORD

Then, run the following commands:

- `git clone https://github.com/NVBots/resin-mjpgstreamer.git`
- `cd resin-mjpgstreamer`
- `git remote add resin git@git.resin.io:<username>/<project_name>.git`
- `git push resin master`

Boot a Raspberry Pi with the SD card.

To view on local network, go to `http://<device_ip>`

To view on internet, enable public ip through the resin dashboard and click on the link

Configuration:

There are several settings that can be configured via Environment Variables:
* USERNAME : username for authentication (setting this variable enables authentication and requires PASSWORD to be set)
* PASSWORD : password for authentication
* USE_RASPICAM : Setting this variable to any value enables streaming from a raspberry pi camera instead of a USB webcam
* RESOLUTION : set to desired resolution {width}x{height}. defaults to 1280x720
* FRAMERATE: set desired framerate. defaults to 10

Raspberry Pi Camera:

You'll need to edit the default image to enable the raspberry pi cam. Follow instructions from here: http://docs.resin.io/#/pages/hardware/i2c-and-spi.md#raspberry-pi-camera-module

Sources:

mjpg-streamer from https://github.com/jacksonliam/mjpg-streamer

patched for mjpg support on raspberry pi based on http://www.raspberrypi.org/forums/viewtopic.php?t=97983

a good description of mjpg-streamer controls can be found here http://wolfpaulus.com/jounal/embedded/raspberrypi_webcam/

Project created by Forrest Pieper (forrestp@nvbots.com) with New Valence Robotics (www.nvbots.com)
