#!/bin/bash
# mkdir /tmp/yolodockerdemo
# cp * /tmp/yolodockerdemo/
cd ..
cp  -r -t runJetson initopencv.sh installopencv.sh darknet
echo "************************************************ init opencv ************************************************"
/bin/bash initopencv.sh
echo "************************************************ install opencv ************************************************"
/bin/bash installopencv.sh
echo "************************************************ build darknet ************************************************"
cp -r -t runJetson/darknet yolov3-tiny.weights yolov3.weights Makefile
cd runJetson/darknet
make -j
echo "************************************************ copied files ************************************************"
ls
echo "************************************************ building ************************************************"
