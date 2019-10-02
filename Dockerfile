FROM osrf/ros:melodic-desktop-full-bionic

ENV DEBIAN_FRONTEND noninteractive
ENV user=ghost

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils dialog sudo
RUN apt-get -y install pkg-config unzip ffmpeg qtbase5-dev nano tmux gdb valgrind
RUN apt-get -y install python-dev python-pip
RUN apt-get -y install ros-melodic-ackermann-msgs
RUN pip install keras-rl
RUN pip install tensorflow
RUN pip install rospkg
RUN pip install gym
RUN pip install opencv-contrib-python
RUN apt-get clean

RUN useradd -ms /bin/bash ${user}
USER ${user}
WORKDIR /home/${user}

RUN /bin/bash -c "source /opt/ros/melodic/setup.bash"
