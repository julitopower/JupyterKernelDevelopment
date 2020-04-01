test_widget
===============================

A Custom Jupyter Widget Library

Installation
------------

To install use pip:

    $ pip install test_widget
    $ jupyter nbextension enable --py --sys-prefix test_widget

To install for jupyterlab

    $ jupyter labextension install test_widget

For a development installation (requires npm),

    $ git clone https://github.com//test_widget.git
    $ cd test_widget
    $ pip install -e .
    $ jupyter nbextension install --py --symlink --sys-prefix test_widget
    $ jupyter nbextension enable --py --sys-prefix test_widget
    $ jupyter labextension install js

When actively developing your extension, build Jupyter Lab with the command:

    $ jupyter lab --watch

This take a minute or so to get started, but then allows you to hot-reload your javascript extension.
To see a change, save your javascript, watch the terminal for an update.

Note on first `jupyter lab --watch`, you may need to touch a file to get Jupyter Lab to open.

