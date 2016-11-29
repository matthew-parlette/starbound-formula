=================
starbound-formula
=================

A state to manage the running of a Starbound dedicated server.

The server is run in a docker container.

The steam username and password must be provided in a pillar, and the account must have Steam Guard disabled.

.. note::

    See the additional info section of the `docker hub repository
    <https://hub.docker.com/r/lacsap/starbound/>`_.

Available states
================

.. contents::
    :local:

``starbound``
-------------

Installs the starbound image, and starts a starbound container.
