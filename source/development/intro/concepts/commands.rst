========
Commands
========

Commands in Minecraft are regular chat messages prefixed with a forward-slash (``/``). An example is the ``/plugins`` command, which is present by default in Paper. As the server processes chat messages, it looks for messages beginning with a ``/`` and will process those, specifically, as commands.

Plugins can register specific units of code to act in response to the server receiving a specific command. This in turn allows the developer to customize the Paper server by way of adding commands for new functionality.

Some examples of custom commands include the `EssentialsX`_ plugin's ``/spawn`` command or the `WorldEdit`_ plugin's ``//wand`` command.

There are numerous uses for custom commands in plugins, as you will come to see. For now, continue reading. Soon, you will be architecting your own commands!

.. _EssentialsX: https://www.spigotmc.org/resources/essentialsx.9089/
.. _WorldEdit: https://enginehub.org/worldedit/