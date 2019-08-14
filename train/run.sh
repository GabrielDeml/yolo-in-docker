#!/bin/bash
docker kill yolodockertrain
docker rm yolodockertrain
nvidia-docker run -it --name yolodockertrain yolodockertrain