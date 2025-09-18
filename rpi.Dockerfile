# base pre-built cross image
ARG CROSS_BASE_IMAGE
FROM $CROSS_BASE_IMAGE

ARG CROSS_DEB_ARCH

RUN dpkg --add-architecture $CROSS_DEB_ARCH
RUN apt-get update
RUN apt-get install -y libasound2-dev:$CROSS_DEB_ARCH
RUN apt-get install -y libpulse0:$CROSS_DEB_ARCH
