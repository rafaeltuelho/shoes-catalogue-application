#!/bin/bash
echo "$REGISTRY_AUTH_TOKEN" | docker login -u "$REGISTRY_AUTH_USER" --password-stdin $REGISTRY_SERVER
docker push ${REGISTRY_SERVER}/${TRAVIS_REPO_SLUG}