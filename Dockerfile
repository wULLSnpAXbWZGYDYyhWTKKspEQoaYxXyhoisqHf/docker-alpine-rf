FROM python:3.9-rc-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL description="Docker image for running tests using robot framework."

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-alpine-rf.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.license=GPL-3.0


RUN apk -U upgrade
RUN apk add --no-cache \
    udev \
    chromium \
    chromium-chromedriver \
    xvfb \
    bash

RUN pip install --no-cache-dir \
  robotframework \
  robotframework-selenium2library \
  selenium

# Chrome requires docker to have cap_add: SYS_ADMIN if sandbox is on.
# Disabling sandbox and gpu as default.
RUN sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" /usr/local/lib/python3.9/site-packages/selenium/webdriver/chrome/options.py

ENV ROBOT_UID 1000
ENV ROBOT_NAME rf
# this user (uid==1000) can be used to run tests instead of the root user
# changing the uid (and name) is straightforward
# 'su rf' after startup
RUN adduser -u ${ROBOT_UID} -D -H ${ROBOT_NAME}

RUN mkdir -pv /testing

RUN echo 'PS1="\e[1;36m❄ \e[1;31m\u@\e[1;34malpine-rf \e[1;32m\w\e[m \n➜ "' >> ~/.bashrc \
    && echo 'source ~/.bashrc' >> ~/.bash_profile

ENV SCREEN_WIDTH 1920
ENV SCREEN_HEIGHT 1080
ENV SCREEN_DEPTH 16

WORKDIR /testing
ENTRYPOINT ["/bin/bash"]
