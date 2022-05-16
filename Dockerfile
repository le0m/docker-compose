FROM docker:20.10


RUN apk add --no-cache curl git openssh-client ca-certificates \
    && curl -SL https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
