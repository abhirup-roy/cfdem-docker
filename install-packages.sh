#!/bin/bash
export DEBIAN_FRONTEND=noninteractive


ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

apt-get update
apt-get install build-essential flex bison cmake zlib1g-dev \
                libboost-system-dev libboost-thread-dev curl time \
                libopenmpi-dev openmpi-bin gnuplot libreadline-dev \
                libncurses-dev libxt-dev libscotch-dev libptscotch-dev \
                libvtk6-dev python-numpy git-core qt4-dev-tools vim \
                libqt4-dev libqt4-opengl-dev freeglut3-dev libqtwebkit-dev  -y
export QT_SELECT=qt4

