FROM osrf/ros:melodic-desktop-full-bionic

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils dialog sudo
RUN apt-get -y install pkg-config unzip ffmpeg qtbase5-dev nano tmux gdb valgrind
RUN apt-get -y install python3-dev python3-pip python3-numpy python-dev python-pip
RUN apt-get -y install ros-melodic-ackermann-msgs
RUN pip install rospkg
RUN pip3 install rospkg
RUN apt-get clean

RUN /bin/bash -c "source /opt/ros/melodic/setup.bash"
