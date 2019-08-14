#!/bin/bash
mkdir /tmp/yolodockertrain
cp * /tmp/yolodockertrain
cd ..
cp  -r -t /tmp/yolodockertrain initopencv.sh installopencv.sh yolov3-tiny.weights yolov3.weights Makefile darknet
cd /tmp/yolodockertrain
echo "************************************************ copied files ************************************************"
ls
echo "************************************************ building ************************************************"
docker build -t yolodockertrain .