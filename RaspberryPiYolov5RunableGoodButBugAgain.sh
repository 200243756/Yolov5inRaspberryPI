#!/bin/bash

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install libopenblas-dev libblas-dev m4 cmake cython python3-dev python3-yaml python3-setuptools -y
sudo apt install libavutil-dev libavcodec-dev libavformat-dev libswscale-dev -y
sudo apt install python3-pandas -y

sudo apt install libhdf5-dev libhdf5-serial-dev libatlas-base-dev libjasper-dev libqtgui4 libqt4-test libjasper-dev libatlas-base-dev libopenblas-dev libatlas-base-dev libhdf5-serial-dev libhdf5-dev -y
sudo apt-get install qt4-qmake libqt4-dev #new code

pip3 install wheel
pip3 install pandas
pip3 install opencv-python 
pip3 install -U numpy

git clone https://github.com/sungjuGit/PyTorch-and-Vision-for-Raspberry-Pi-4B.git
cd PyTorch-and-Vision-for-Raspberry-Pi-4B

pip3 install torch-1.8.0a0+56b43f4-cp37-cp37m-linux_armv7l.whl
pip3 install torchvision-0.9.0a0+8fb5838-cp37-cp37m-linux_armv7l.whl

cd ..

git clone https://github.com/ultralytics/yolov5.git
cd yolov5
pip3 install -r requirements.txt
python3 detect.py

