FROM henry2423/ros-vnc-ubuntu:melodic

### Install as root
## SSH
USER root
RUN apt update && apt install -y openssh-server && service ssh start

USER $USER
###

### Run commands
CMD echo $PASSWD | sudo -S service ssh start  && sleep infinity