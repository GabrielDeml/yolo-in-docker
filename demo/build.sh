#!/bin/bash
mkdir /tmp/yolodockerdemo
cp * /tmp/yolodockerdemo
cd ..
cp  -r -t /tmp/yolodockerdemo initopencv.sh installopencv.sh yolov3-tiny.weights yolov3.weights Makefile darknet
cd /tmp/yolodockerdemo
echo "************************************************ copied files ************************************************"
ls
echo "************************************************ building ************************************************"
docker build -t yolodockerdemo .