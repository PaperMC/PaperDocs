===============
Getting Started
===============

.. contents::
   :depth: 1
   :local:

Requirements
~~~~~~~~~~~~

.. warning::
  With the release of Minecraft 1.18, Paper now requires **Java 17** to run. If
  you don't already have Java 17, :doc:`it's easy to download and
  install</java-update/index>`.

+------------------------+--------------------------+
| Paper Release          | Recommended Java Version |
+========================+==========================+
| Paper 1.8 to 1.11      | Java 8                   |
+------------------------+--------------------------+
| Paper 1.12 to 1.16.4   | Java 11                  |
+------------------------+--------------------------+
| Paper 1.16.5 to 1.17.1 | Java 16                  |
+------------------------+--------------------------+
| Paper 1.18 and newer   | Java 17                  |
+------------------------+--------------------------+

Migrating From Vanilla
~~~~~~~~~~~~~~~~~~~~~~

Migrating from Vanilla is easy, but there are some differences, namely in
world saves. Paper (and CraftBukkit and Spigot) separate out each dimension of
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
``java -Xms2G -Xmx2G -jar paper-###.jar --nogui``

| The amount of RAM can be set by changing the numbers in the ``-Xms`` and ``-Xmx`` arguments.
| ``--nogui`` disables Vanilla's GUI so you don't get double interfaces when using the command line.

For more advanced Java tuning, see :doc:`../server/aikar-tuning` page.

To configure your server, see the :doc:`../server/configuration` page.

Updating The Server
~~~~~~~~~~~~~~~~~~~

To update the server, first stop it safely by executing the ``stop`` command
and then replace the old paperclip jar with a new one. That's it.
