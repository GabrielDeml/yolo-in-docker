#https://medium.com/the-artificial-impostor/docker-nvidia-gpu-nvidia-docker-808b23e1657
FROM nvidia/cuda:8.0-cudnn7-devel-ubuntu16.04
# FROM ubuntu:16.04
WORKDIR /app

RUN apt update
RUN apt-get install build-essential -y
COPY initopencv.sh .
RUN /bin/bash initopencv.sh
COPY installopencv.sh .
RUN /bin/bash installopencv.sh

COPY darknet .

COPY Makefile .
RUN make -j 8
CMD tail -f /dev/null
# CMD ["./darknet" "detect" "cfg/yolov3.cfg" "yolov3.weights" "data/dog.jpg"]
# CMD ./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights -thresh 0.2
# CMD ./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights