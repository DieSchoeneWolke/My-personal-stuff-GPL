#simple script to install the dependencies for openboard to use their released deb packages

#!/bin/bash

# Informational list of build-essential packages
sudo apt install build-essential

# free implementation of the OpenGL API -- GLX development files
sudo apt install libgl1-mesa-dev

# generic font configuration library - runtime
sudo apt install libfontconfig1 

# Secure Sockets Layer toolkit - development files
sudo apt install libssl-dev

# PDF rendering library -- development files
sudo apt install libpoppler-dev

# PDF rendering library -- development files (CPP interface)
sudo apt install libpoppler-cpp-dev

# PDF rendering library -- private development files
sudo apt install  libpoppler-private-dev

# ffmpeg libraries and associated dependencies
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libpaper-dev libva-dev libxcb-shm0-dev libasound2-dev libx264-dev libvpx-dev libvorbis-dev  libtheora-dev li
bmp3lame-dev libsdl1.2-dev libopus-dev  libfdk-aac-dev libass-dev liblzma-dev libbz2-dev

# C++ wrapper for ZIP/UNZIP (development files)
sudo apt install libquazip5-dev

# X C Binding, shape extension, development files
sudo apt install libxcb-shape0-dev

# X C Binding, xfixes extension, development files
sudo apt install libxcb-xfixes0-dev
