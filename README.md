# docker-alpine-rf

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-alpine-rf/status.svg)](https://drone.dotya.ml/wanderer/docker-alpine-rf)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/immawanderer/alpine-rf)](https://hub.docker.com/r/immawanderer/alpine-rf/builds)
[![](https://images.microbadger.com/badges/version/immawanderer/alpine-rf.svg)](https://microbadger.com/images/immawanderer/alpine-rf)
[![](https://images.microbadger.com/badges/commit/immawanderer/alpine-rf.svg)](https://microbadger.com/images/immawanderer/alpine-rf)

This repository provides the Dockerfile to create a container image for [robotframework](https://robotframework.org) website testing.

## What you get
* updated python[`:3.9-rc-alpine`](https://hub.docker.com/_/python) image
* robot framework
* selenium library
* chromium
* chrome driver
* bash as kind of a convenience (the base is a python image)
* `rf` user (uid==1000) that can be used to run tests (instead of `root`)
