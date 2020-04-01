#!/bin/bash

docker exec -it jupyter-server /bin/bash -c "cd /opt/dev/src/ && cookiecutter https://github.com/jupyter/widget-cookiecutter.git"
