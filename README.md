# Modem: Broadcast

> Dockerized Icecast deployment for broadcasting to Modem listeners

[![Build Status](https://travis-ci.org/radiomodem/broadcast.svg)](https://travis-ci.org/radiomodem/broadcast)

## Requirements

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/) (Mac and Windows only)

For the folks on macOS:

```console
brew install docker docker-compose docker-machine
```

## Running

Set up a Docker Machine and then run:

```console
$ docker-compose up -d
```

Whenever changes have been made to the project, make sure to rebuild and restart the containers:

```console
$ docker-compose up -d --force-recreate
```

---

Copyright &copy; 2015-2017 Modem. Licensed under the terms of the [MIT license](LICENSE.md).
