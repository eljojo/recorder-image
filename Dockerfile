FROM buildpack-deps:focal

LABEL maintainer="jojo <docker@eljojo.net>"

RUN apt-get update
RUN apt-get install -y ca-certificates ffmpeg awscli buffer && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
COPY record.sh /app/record.sh
ENTRYPOINT ["/bin/bash", "/app/record.sh"]
