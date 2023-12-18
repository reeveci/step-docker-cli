#!/bin/bash
set -e

if [ -z "$REEVE_API" ]; then
  echo This docker image is a Reeve CI pipeline step and is not intended to be used on its own.
  exit 1
fi

cd /reeve/src/

if [ -n "$DOCKER_LOGIN_USER" ]; then
  if [ -z "$DOCKER_LOGIN_PASSWORD" ]; then
    echo Missing login password
    exit 1
  fi

  echo Login attempt for ${DOCKER_LOGIN_REGISTRY:-$NAME}...
  printf "%s\n" "$DOCKER_LOGIN_PASSWORD" | docker login -u "$DOCKER_LOGIN_USER" --password-stdin ${DOCKER_LOGIN_REGISTRY:-$NAME}
fi

exec "$@"
