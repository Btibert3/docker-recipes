FROM rocker/rstudio

# Inspired from https://github.com/earthlab/dockerfiles/blob/master/r-tensorflow/Dockerfile
MAINTAINER "Brock Tibert" btibert3@gmail.com

# from the tensorflow dockerfile: 
# https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        libfreetype6-dev \
        libzmq3-dev \
        pkg-config \
        python3 \
        python3-pip \
        rsync \
        software-properties-common \
        unzip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        pandas \
        scikit-learn \
       scipy \
        && \
    python -m ipykernel.kernelspec

RUN install2.r --error \
    devtools
    
RUN R -e "devtools::install_github('rstudio/tensorflow')"

RUN pip install virtualenv

USER rstudio

RUN R -e "tensorflow::install_tensorflow(extra_packages = 'tensorflow-probability')"

USER root
