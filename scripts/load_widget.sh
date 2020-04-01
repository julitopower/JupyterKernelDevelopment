#!/bin/bash

EXT_NAME=${1:-test_ext}
docker exec jupyter-kernel jlpm --cwd /opt/dev/src/$EXT_NAME/js/ install
docker exec jupyter-kernel pip install -e /opt/dev/src/$EXT_NAME
#docker exec jupyter-kernel pip install -e /opt/dev/src/$EXT_NAME
docker exec jupyter-server jlpm --cwd /opt/dev/src/$EXT_NAME/js/ install
docker exec jupyter-server pip install -e /opt/dev/src/$EXT_NAME
docker exec jupyter-server jupyter labextension install /opt/dev/src/$EXT_NAME/js/
