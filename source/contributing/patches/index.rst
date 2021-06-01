=======
Patches
=======

Paper is mostly patches and extensions to Spigot. These patches/extensions are split into different directories which target certain parts of the code. These directories are:

* ``Paper-API`` - Modifications to Spigot-API/Bukkit;
* ``Paper-MojangAPI`` - An API for Mojang's Brigadier;
* ``Paper-Server`` - Modifications to Spigot/CraftBukkit.

Because the entire structure is based on patches and git, a basic understanding of how to use git is required. A basic tutorial can be found here: https://git-scm.com/docs/gittutorial.

Assuming you have already forked the repository:

1. Clone your fork to your local machine;
2. Type ``./paper patch`` in a terminal to apply the changes from upstream;
3. ``cd`` into ``Paper-Server`` for server changes, and ``Paper-API`` for API changes.

.. hint::
    You can also run ``./paper server`` or ``./paper api`` for these same directories respectively.

4. You can also run ``./paper setup``, which allows you to type ``paper <command>`` from anywhere in the Paper structure in most cases.

``Paper-Server`` and ``Paper-API`` aren't git repositories in the traditional sense:

* Every single commit in ``Paper-Server``/``Paper-API`` is a patch;
* ``origin/master`` points to a directory similar to ``Paper-Server``/``Paper-API`` but for Paper;
* Typing ``git status`` should show that we are 10 or 11 commits ahead of master, meaning we have 10 or 11 patches Spigot and CraftBukkit don't.
        
.. hint::
    If it says something like ``212 commits ahead, 207 commits behind``, ``cd`` into the root directory of the cloned repository and type ``git fetch`` to update your upstream. Setting up a remote for the upstream Paper repository might be necessary.

Further Reading
===============

.. toctree::
    :maxdepth: 1
    :titlesonly:

    creating
    modifying/index