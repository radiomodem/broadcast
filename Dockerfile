###############################################################################
# Base image
###############################################################################

FROM debian:jessie

################################################################################
# Environment variables
################################################################################

ENV ICECAST_VERSION 2.4.2
ENV ICECAST_SOURCE https://github.com/xiph/Icecast-Server.git

################################################################################
# Build instructions
################################################################################

USER root

RUN apt-get update && apt-get install -y \
  # Tools for compiling Icecast
  make \
  automake \
  libtool \
  libxslt-dev \
  libogg-dev \
  libvorbis-dev \

  # Git
  git-core

WORKDIR ~/icecast

RUN git clone -b v$ICECAST_VERSION --depth 1 $ICECAST_SOURCE .
RUN ./autogen.sh && make && make install

RUN mkdir -p logs && chmod 777 logs

COPY icecast.xml ./

################################################################################
# Entrypoint
################################################################################

ENTRYPOINT ["icecast", "-c", "./icecast.xml"]
