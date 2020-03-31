#!/bin/bash

EXT_NAME=${1:-text_ext}
docker exec jupyter-server jlpm --cwd /opt/dev/src/$EXT_NAME run build
docker exec jupyter-server jupyter labextension install /opt/dev/src/$EXT_NAME
