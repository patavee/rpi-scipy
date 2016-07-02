
# pull base image
FROM patavee/rpi-numpy
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

# install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libatlas-base-dev \
    gfortran && \
    rm -rf /var/lib/apt/lists/*
    
# install numpy
RUN pip install scipy
