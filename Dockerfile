#https://medium.com/the-artificial-impostor/docker-nvidia-gpu-nvidia-docker-808b23e1657
FROM nvidia/cuda:8.0-cudnn7-devel-ubuntu16.04
# FROM ubuntu:16.04
WORKDIR /app

RUN apt update
RUN apt-get install build-essential -y
# RUN apt install -y find
# RUN find / -name "ncc"
# CMD ["find" "/" "-name" "nvcc"]
COPY darknet .
RUN make -j
CMD tail -f /dev/null
# CMD ["./darknet" "detect" "cfg/yolov3.cfg" "yolov3.weights" "data/dog.jpg"]