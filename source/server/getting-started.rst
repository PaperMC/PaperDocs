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
to make any changes apart from the new Paper.yml from us which includes more configurable settings!

Getting A Server Jar
~~~~~~~~~~~~~~~~~~~~~

Paper provides runnable server jars directly from our continuous integration
server `here <https://papermc.io/downloads>`_.

Download one of the verions (**Latest recommended**) (paper-###.jar) and save it to a new directory somewhere on your file system or upload it to the root location of your server.

For older versions of Paper:
`Minecraft 1.12 <https://papermc.io/api/v1/paper/1.12.2/latest/download>`_, 
`Minecraft 1.11 <https://papermc.io/api/v1/paper/1.11.2/latest/download>`_, 
`Minecraft 1.10 <https://papermc.io/api/v1/paper/1.10.2/latest/download>`_, 
`Minecraft 1.9 <https://papermc.io/api/v1/paper/1.9.4/latest/download>`_, 
`Minecraft 1.8 <https://papermc.io/api/v1/paper/1.8.8/latest/download>`_, 

Running The Server
~~~~~~~~~~~~~~~~~~

To run the server, simply start it up like any other Java application.

Open your terminal, navigate to the saved location, and then run
``java -Xms128m -Xmx1g -jar paper.jar``

Updating The Server
~~~~~~~~~~~~~~~~~~~

To update the server, first stop it safely by executing the ``stop`` command
and then replace the old paper jar with a new one. That's it.


Changing/Optimizing The Server
~~~~~~~~~~~~~~~~~~~

To see all the configurable settings for your server, see the :doc:`../server/configuration` page.

We recommend to tune your server to how you like it and to improve performance by disabling what you don't need etc.
We highly recommend to check out this `SpigotMC thread <https://www.spigotmc.org/threads/guide-server-optimization%E2%9A%A1.283181/>`_ for an in-depth guide.

For **advanced users of Java**, you may want to check out Java tuning, see `this page <https://mcflags.emc.gs>`_
