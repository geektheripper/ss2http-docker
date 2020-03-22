#!/usr/bin/env bash

docker build \
  --tag "geektr/ss2http-docker:latest" \
  --compress \
  .

tee <<EOF
=========================
docker push geektr/ss2http-docker
=========================
EOF
