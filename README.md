# docker-alpine-rf

This repository provides the Dockerfile to create a container image for [robotframework](https://robotframework.org) website testing.

## What you get
* updated python[`:3.9-rc-alpine`](https://hub.docker.com/_/python) image
* robot framework
* selenium library
* chromium
* chrome driver
* bash as kind of a convenience (the base is a python image)
* `rf` user (uid==1000) that can be used to run tests (instead of `root`)
