# Alpine MySQL Docker #

[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/alpine-mysql.svg)](https://hub.docker.com/r/scalified/alpine-mysql)
[![](https://images.microbadger.com/badges/image/scalified/alpine-mysql.svg)](https://microbadger.com/images/scalified/alpine-mysql)
[![](https://images.microbadger.com/badges/version/scalified/alpine-mysql.svg)](https://microbadger.com/images/scalified/alpine-mysql)

## Description

This repository is used for building a [**Docker**](https://www.docker.com) image containing [**MySQL**](https://www.mysql.com/) running on [**Alpine Linux**](https://alpinelinux.org/)

## Dockerhub

**`docker pull scalified/alpine-mysql`**

## Version

| #      | Version |
|--------|---------|
| Alpine | 3.4     |

## Volumes

**`/opt/mysql/data`**

### How-To

#### Building Docker Image

`docker build . -t <tag>`

#### Running Docker Image

* Pulling from **Dockerhub**:  
  `docker run -it scalified/alpine-mysql /bin/sh`

* Launching the built image with <tag> tag:  
  `docker run -it <tag> /bin/sh`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[Squash TM Docker Image]: Proposals And Suggestions">Scalified Support</a>
