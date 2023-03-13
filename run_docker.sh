#!/usr/bin/env bash


docker build --tag=house_prediction .


docker image ls


docker run -p 8000:80 -it house_prediction 