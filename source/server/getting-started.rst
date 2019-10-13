===============
Getting Started
===============

.. contents::
   :depth: 1
   :local:

Requirements
~~~~~~~~~~~~

Paper requires **Java 8** or newer to run. It should run fine on newer versions
as well, such as Java 11, but certain plugins may have issues. Generally, LTS
versions of Java are best supported, though you may have luck on newer versions.

Migrating From Vanilla
~~~~~~~~~~~~~~~~~~~~~~

Migrating from Vanilla is easy, but there are some differences, namely in
world saves. Paper (and CraftBukkit and Spigot) seperate out each dimension of
a world (nether, the end, etc) into separate world folders.

Paper will handle this conversion for you automatically.

Migrating From CraftBukkit/Spigot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Paper is a drop in replacement for both CraftBukkit and Spigot, you don't need
to make any changes.

Getting A Server Jar
~~~~~~~~~~~~~~~~~~~~~

Paper provides runnable server jars directly from our `website's downloads page <https://papermc.io/downloads>`_.

Click on the build number to download a file.

Running The Server
~~~~~~~~~~~~~~~~~~

To run the server, simply start it up like any other Java application.

Open your terminal, navigate to the saved location, and then run
``java -Xms2G -Xmx2G -jar paper-###.jar``

The amount of RAM can be set by changing the numbers in the ``-Xms`` and ``-Xmx``
arguments.

For more advanced Java tuning, see `Aikar's tuning page <https://mcflags.emc.gs>`_.

To configure your server, see the :doc:`../server/configuration` page.

Updating The Server
~~~~~~~~~~~~~~~~~~~

To update the server, first stop it safely by executing the ``stop`` command
and then replace the old paperclip jar with a new one. That's it.
