FROM nvidia/cuda:10.2-base-ubuntu18.04
FROM python:3.8-slim

# Install dependencies.
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    vim \
    curl \
    libglu1 \
    libglib2.0-0

# Update pip
RUN pip3 install --upgrade pip

# Install Python libraries
RUN pip3 install torch torchvision cython simplejson av psutil opencv-python tensorboard moviepy scikit-learn pillow pandas parse

# Change working directory
WORKDIR /slowfast_feature_extractor

RUN pip install 'git+https://github.com/facebookresearch/fvcore'

RUN python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
