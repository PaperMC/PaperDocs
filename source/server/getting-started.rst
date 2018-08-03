===============
Getting Started
===============

.. contents::
   :depth: 1
   :local:

Requirements
~~~~~~~~~~~~

Paper requires **Java 8** or newer to run. It should run fine on newer versions
as well, such as Java 10, but certain plugins may have issues.

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

Paper provides runnable server jars directly from our continuous integration
server `here <https://destroystokyo.com/ci/job/Paper>`_.

Download one of the artifacts (either paperclip.jar or paperclip-####.jar, they
are the same) and save it to a new directory somewhere on your file system.

Running The Server
~~~~~~~~~~~~~~~~~~

To run the server, simply start it up like any other Java application.

Open your terminal, navigate to the saved location, and then run
``java -jar paperclip.jar``

For more advanced Java tuning, see `this page <https://mcflags.emc.gs>`_

To configure your server, see the :doc:`../server/configuration` page.

Updating The Server
~~~~~~~~~~~~~~~~~~~

To update the server, first stop it safely by executing the ``stop`` command
and then replace the old paperclip jar with a new one. That's it.
