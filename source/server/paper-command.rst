======================
The ``/paper`` Command
======================

The ``/paper`` command is home to several useful sub-commands. They are broken down below into more detail.

As of `1.16.5 build #547`, each sub-command has its own permission node, denoted as the following:

``bukkit.command.paper.[subcommand]`` For example, ``bukkit.command.paper.heap``.

.. contents::
   :depth: 1
   :local:

``/paper heap``
~~~~~~~~~~~~~~~

This sub-command dumps the current JVM memory heap to a file in the "dumps" directory.

If successful, it will notify the user of the destination file.
Otherwise, it will state that it failed and will print an error to the console.

``/paper entity``
~~~~~~~~~~~~~~~~~

``/paper reload``
~~~~~~~~~~~~~~~~~

This sub-command reloads the ``paper.yml`` configuration file.

.. warning::
    Please note that this command is not supported and may cause issues.

    If you encounter any issues, please use the ``/stop`` command to restart your server.

``/paper version``
~~~~~~~~~~~~~~~~~~

This sub-command is equivalent to running ``/version``. It prints out useful information regarding the server's version.

.. code-block::

  Checking version, please wait...
  This server is running Paper version git-Paper-545 (MC: 1.16.5) (Implementing API version 1.16.5-R0.1-SNAPSHOT)
  You are 1 version(s) behind
  Previous version: git-Paper-483 (MC: 1.16.5)

As of `1.16.5 build #542`, you can click the response to copy it to your clipboard.

``/paper debug``
~~~~~~~~~~~~~~~~

This sub-command is useful for debugging various parts of the server.

Currently, it supports one argument (excluding the help command itself):

* chunks
    - This dumps loaded chunk information to a file.
        - This file ends up in the server's "debug" directory.

``/paper chunkinfo``
~~~~~~~~~~~~~~~~~~~~

``/paper dumpwaiting``
~~~~~~~~~~~~~~~~~~~~~~

``/paper syncloadinfo``
~~~~~~~~~~~~~~~~~~~~~~~

``/paper fixlight``
~~~~~~~~~~~~~~~~~~~

This sub-command updates the lighting in a specified chunk radius around the player.

This sub-command accepts one argument, an integer value for the chunk radius to update. By default, this value is **2**.

``/paper dumpitem``
~~~~~~~~~~~~~~~~~~~

This sub-command dumps the currently held items' NBT into chat. It may be useful for plugin debugging.