# resin-mjpgstreamer
Raspberry Pi mjpg-streamer using resin.io


Instructions:

First, create a resin.io application and write the image to an SD card.

Then, run the following commands:

- `git clone https://github.com/NVBots/resin-mjpgstreamer.git`
- `cd resin-mjpgstreamer`
- `git remote add resin git@git.resin.io:<username>/<project_name>.git`
- `git push resin master`

Boot a Raspberry Pi with the SD card.

To view on local network, go to `<device_ip>:8080`

To view on internet, enable public ip through the resin dashboard and click on the link to port 8080

To enable authentication, edit start.sh to use the commented mjpg-streamer command instead. Also add two environment variables through the resin.io dashboard: USERNAME and PASSWORD. Note that authentication currently only works over the local network.

Sources:

mjpg-streamer from svn://svn.code.sf.net/p/mjpg-streamer/code/

patched for mjpg support on raspberry pi based on http://www.raspberrypi.org/forums/viewtopic.php?t=97983

a good description of mjpg-streamer controls can be found here http://wolfpaulus.com/jounal/embedded/raspberrypi_webcam/

Project created by Forrest Pieper (forrestp@nvbots.com) with New Valence Robotics (www.nvbots.com)
