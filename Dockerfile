################################################################################
# Base image
################################################################################

FROM ubuntu:16.04

################################################################################
# Environment variables
################################################################################

ENV ICECAST_VERSION 2.4.2
ENV ICECAST_SOURCE http://downloads.xiph.org/releases/icecast/icecast

################################################################################
# Build instructions
################################################################################

USER root

RUN apt-get -qq update
RUN apt-get -qq install -y \
  # Tools for compiling Icecast
  make \
  curl \
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

RUN curl -sL $ICECAST_SOURCE-$ICECAST_VERSION.tar.gz \
  | tar xz

WORKDIR /icecast-$ICECAST_VERSION

RUN ./configure && make && make install

COPY entrypoint.sh ./
COPY icecast.xml ./
COPY supervisord.conf ./
COPY app ./app

################################################################################
# Entrypoint
################################################################################

ENTRYPOINT ["./entrypoint.sh"]
