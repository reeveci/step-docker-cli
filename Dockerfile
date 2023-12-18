FROM docker

RUN apk add bash
COPY --chmod=755 docker-entrypoint.sh /usr/local/bin/

# DOCKER_LOGIN_REGISTRY: docker registry to log in to - can be inferred from the image name if left empty
ENV DOCKER_LOGIN_REGISTRY=
# DOCKER_LOGIN_USER: user for logging into docker registry
ENV DOCKER_LOGIN_USER=
# DOCKER_LOGIN_PASSWORD: password for logging into docker registry
ENV DOCKER_LOGIN_PASSWORD=

ENTRYPOINT ["docker-entrypoint.sh"]
