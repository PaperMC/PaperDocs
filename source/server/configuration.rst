=============
Configuration
=============

This page details the various configuration settings exposed by Paper.

If you want information on settings in spigot.yml and bukkit.yml you should see
their respective documentation pages.

* `Bukkit Configuration (bukkit.yml) <https://bukkit.gamepedia.com/Bukkit.yml>`_

* `Spigot Configuration (spigot.yml) <https://www.spigotmc.org/wiki/spigot-configuration/>`_

.. warning::
    Configuration values change frequently at times. It is possible for the
    information here to be incomplete. If you cannot find what you're looking for
    or think something may be wrong, :doc:`../about/contact`

Global Values
=============

Global values affect all worlds on the server.

* verbose:
    - **default**: false
    - **description**: Sets whether the server should dump all configuration values to the server log on startup.

* enable-player-collisions:
    - **default**: true
    - **description**: Sets whether the server should allow players to collide with one another.
    - **warning**: This setting can be broken by plugins interacting with the scoreboard, double check plugins when troubleshooting this value.

* player-auto-save-rate:
    - **default**: -1
    - **description**: Sets the tick delay between automatic player data saves. Default inherits from world autosave.

* max-player-auto-save-per-tick:
    - **default**: -1
    - **description**: Controls how many players may have their data autosaved per tick. Default is automatic.
