FROM buildpack-deps:focal

LABEL maintainer="jojo <docker@eljojo.net>"

RUN apt-get update
RUN apt-get install -y ca-certificates ffmpeg awscli && \
    rm -rf /var/lib/apt/lists/*

