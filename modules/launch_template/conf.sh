#!/bin/bash

sudo apt update

sudo apt install docker.io

sudo docker run -d -p 80:80 --name nginx nginx


