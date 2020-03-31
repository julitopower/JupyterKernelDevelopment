EXT=${EXT}

# Build docker images
build:
	docker-compose build

# Start docker compose stack
up:
	docker-compose up -d

# Stop docker compose stack
down:
	docker-compose down

# Get the Jupyter login token from the logs
token:
	docker-compose logs | grep token

# Initialize a jupyterlab extension. It uses
# cookiecutter inside the jupyter-server container
# This is an interactive target
init: up
	scripts/init_extension.sh

# Build and install a jupyterlab extension
load: up
	scripts/load_extension.sh ${EXT}

# Rebuild a jupyterlab extension. This allows
# showing the latest version without having to
# restart the jupyter server
reload: up
	scripts/reload_extension.sh ${EXT}
