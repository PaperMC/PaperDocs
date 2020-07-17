===============
Getting Started
===============

.. contents::
   :depth: 1
   :local:

Requirements
~~~~~~~~~~~~

Waterfall and Travertine require **Java 8** or newer to run. It should run fine
on newer versions as well, such as Java 11, but certain plugins may have issues.
Generally, LTS versions of Java are best supported, though you may have luck on newer versions.

Migrating From BungeeCord
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Waterfall and Travertine are drop in replacements for BungeeCord, you don't need to make any changes.

Getting A Server Jar
~~~~~~~~~~~~~~~~~~~~~

Paper provides runnable server jars directly from our `website's downloads page <https://papermc.io/downloads#Waterfall>`_.

Click on the build number to download a file.

Running The Server
~~~~~~~~~~~~~~~~~~

To run the server, simply start it up like any other Java application.

Open your terminal, navigate to the saved location, and then run
``java -Xms512M -Xmx512M -jar waterfall-###.jar``

The amount of RAM can be set by changing the numbers in the ``-Xms`` and ``-Xmx``
arguments.

To configure your server, see the :doc:`../waterfall/configuration` page.

Updating The Server
~~~~~~~~~~~~~~~~~~~

To update the server, first stop it safely by executing the ``end`` command
and then replace the old waterfall jar with a new one. That's it.
