FROM docker:20.10

ARG COMPOSE_VERSION=2.9.0
ADD "https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-linux-x86_64" /usr/local/bin/docker-compose
RUN chmod a+x /usr/local/bin/docker-compose
