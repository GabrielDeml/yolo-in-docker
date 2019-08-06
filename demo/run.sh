#!/bin/bash
docker kill yolodocker
docker rm yolodocker
xhost + && nvidia-docker run -it --name yolodockerdemo --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/video0:/dev/video0  yolodockerdemo