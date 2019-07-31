#!/bin/bash 
git clone https://github.com/pjreddie/darknet
cd /darknet
wget https://pjreddie.com/media/files/yolov3.weights
wget https://pjreddie.com/media/files/yolov3-tiny.weights
cd ..
nvidia-docker build -t yolodocker .

