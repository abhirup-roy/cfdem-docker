FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime

RUN apt-get -y update
RUN apt-get -y install git-core build-essential flex bison cmake zlib1g-dev libboost-system-dev \
     libboost-thread-dev libopenmpi-dev openmpi-bin gnuplot libreadline-dev  libncurses-dev\
     libxt-dev libscotch-dev libptscotch-dev libvtk6-dev python-numpy 

RUN ["useradd", "--create-home", "-s", "/bin/bash", "vagrant"]
WORKDIR /home/vagrant
USER vagrant
ADD ./cfdem.sh /tmp/cfdem.sh
RUN ["bash",  "-c", "/tmp/cfdem.sh"]


