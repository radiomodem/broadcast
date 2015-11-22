#!/bin/sh

if [ ! -n "$ICECAST_SOURCE_PASSWORD" ]; then
  ICECAST_SOURCE_PASSWORD=$(openssl rand -hex 16)
fi

if [ ! -n "$ICECAST_RELAY_PASSWORD" ]; then
  ICECAST_RELAY_PASSWORD=$(openssl rand -hex 16)
fi

if [ ! -n "$ICECAST_ADMIN_PASSWORD" ]; then
  ICECAST_ADMIN_PASSWORD=$(openssl rand -hex 16)
fi

sed -i "s/SOURCE_PASSWORD/$ICECAST_SOURCE_PASSWORD/g" ./icecast.xml
sed -i "s/RELAY_PASSWORD/$ICECAST_RELAY_PASSWORD/g" ./icecast.xml
sed -i "s/ADMIN_PASSWORD/$ICECAST_ADMIN_PASSWORD/g" ./icecast.xml

cat ./icecast.xml

icecast -c ./icecast.xml $@
