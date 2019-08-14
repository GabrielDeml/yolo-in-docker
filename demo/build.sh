#!/bin/bash
mkdir /tmp/yolodockerdemo
cp * /tmp/yolodockerdemo/
cd ..
cp  -r -t /tmp/yolodockerdemo/ initopencv.sh installopencv.sh darknet
cp -r -t /tmp/yolodockerdemo/darknet yolov3-tiny.weights yolov3.weights Makefile
cd /tmp/yolodockerdemo
echo "************************************************ copied files ************************************************"
ls
echo "************************************************ building ************************************************"
docker build -t yolodockerdemo .