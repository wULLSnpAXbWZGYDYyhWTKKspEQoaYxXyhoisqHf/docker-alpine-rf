# docker-alpine-rf

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-alpine-rf/status.svg)](https://drone.dotya.ml/wanderer/docker-alpine-rf)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/immawanderer/alpine-rf)](https://hub.docker.com/r/immawanderer/alpine-rf/builds)
[![](https://images.microbadger.com/badges/version/immawanderer/alpine-rf.svg)](https://microbadger.com/images/immawanderer/alpine-rf)
[![](https://images.microbadger.com/badges/commit/immawanderer/alpine-rf.svg)](https://microbadger.com/images/immawanderer/alpine-rf)

This repository provides the Dockerfile to create a container image for [robotframework](https://robotframework.org) website testing.

push mirror lives in [this GitHub repo](https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-alpine-rf)  
development happens on [this Gitea instance](https://git.dotya.ml/wanderer/docker-alpine-rf)

## What you get
* updated python[`:3.10-rc-alpine3.12`](https://hub.docker.com/_/python) image
* robot framework
* selenium library
* chromium
* chrome driver
* bash as kind of a convenience (the alpine-based python image has busybox as a default shell)
* `rf` user (uid==1000) that can be used to run tests (instead of `root`)
* b3sum and b2sum
