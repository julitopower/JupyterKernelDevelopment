# Jupyterlab Remote Kernel development

This project uses docker-compose to create a stack with a Jupyter notebook server (with jupyterlab) container and a kernel gateway. The project includes a jupyterlab extension.

## Requirements

* docker
* docker-compose
* make

## The easy way

To get jupyterlab up and running with a jupyterlab extension and a custom ipywidget, execute the following

```bash
make load EXT=test_ext
make loadwidget EXT=test_widget
```

This will build two containers, ```jupyter-server``` and ```jupyter-kernel```, will build and install the jupyterlab extension, and will start jupyterlab. The directory containing this README.md file gets mounted in both containers under ```/opt/dev/```.

To verify that the stack is fully functional, in a browser open:

```bash
${your_notebook_server_host_ip}:9888
```

to obtain the token to login into the Jupyter server execute:

```bash
make token
```

The custom extension simply writes a message in the javascript console in your browser. To test the custom ipywidget create a new notebook and type

```python
import test_widget as tw
tw.HelloWorld()
```

## Deatailed getting started

A local stack runs two contianers. One is a regular Jupyter server with the ```nb2kg``` server extension installed, and the other runs ```jupyter-kernel-gateway```.

![](img/deploy.png)

To start a fully working stack with a Jupyter notebook server (with jupyterlab) and a kernel gateway we use docker-compose:

```
$ docker-compose build
$ docker-compose up -d
```

Once you've done this, get the login token from the logs:

```
$ docker-compose logs
```

and in your browser open, and input the login token

```
${your_notebook_server_host_ip}:9888
```

or to start Jupyterlab:

```
${your_notebook_server_host_ip}:9888/lab
```

# Files

```
/Dockerfile.kernel: Dockerfile used to build the kernel gateway container
/Dockerfile.server: Dockerfile used to build the Jupyter server container
/LICENSE: MIT license
/Makefile: make file with utility commands
/README.md: this file
/docker-compose.yml: docker-compose configuration file

/img/: Image files used in this documentation
/kernel/: information used to build the kernel gateway container
/scripts/: utility scripts to interact with docker to build/deploy jupyterlab extensions
/server/: information used to build the Jupyter server container
/src/: Jupyterlab extensions and other software
```
