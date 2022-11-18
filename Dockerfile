FROM ubuntu:22.04
MAINTAINER Charlie Bruce <charliebruce@gmail.com>

# Install tools
RUN \
apt-get update && \
apt install -y git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib python3 build-essential


# Download SDK (1.4.0) and set up submodules
RUN mkdir /pico-sdk && \
cd / && \
git clone https://github.com/raspberrypi/pico-sdk.git && \
cd pico-sdk && \
git checkout 1.4.0 && \
git submodule update --init

ENV PICO_SDK_PATH=/pico-sdk
