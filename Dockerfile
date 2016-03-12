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

  # OpenSSL
  openssl \

  # Supervisor
  supervisor \

  # Git
  git-core

WORKDIR /

RUN git clone -b v$ICECAST_VERSION --depth 1 $ICECAST_SOURCE icecast

WORKDIR /icecast

RUN ./autogen.sh && make && make install

COPY entrypoint.sh ./
COPY icecast.xml ./
COPY supervisord.conf ./
COPY app ./app
COPY deny-ip.txt ./

################################################################################
# Entrypoint
################################################################################

ENTRYPOINT ["./entrypoint.sh"]
