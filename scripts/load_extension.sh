#!/bin/bash

EXT_NAME=${1:-test_ext}
docker exec jupyter-server jlpm --cwd /opt/dev/src/$EXT_NAME install
docker exec jupyter-server jupyter labextension install /opt/dev/src/$EXT_NAME
