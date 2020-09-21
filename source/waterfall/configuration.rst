=============
Configuration
=============

This page details the various configuration settings exposed by Waterfall and Travertine.
These settings can be found in waterfall.yml. Travertine has no custom configuration file.

If you want information on settings in BungeeCord's config.yml you should see
its respective documentation pages.

* `BungeeCord Configuration (config.yml) <https://www.spigotmc.org/wiki/bungeecord-configuration-guide/>`_

.. warning::
    Configuration values change frequently at times. It is possible for the
    information here to be incomplete. If you cannot find what you're looking for
    or think something may be wrong, :doc:`../about/contact`

    Last updated August 24th, 2020 for Waterfall build #370

use_netty_dns_resolver
~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Sets whether Netty's async DNS resolver is used for account
  authentication.

disable_modern_tab_limiter
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Disables the tab completion limit for 1.13+ clients.

log_initial_handler_connections
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Sets whether to log InitialHandler connections.

throttling
~~~~~~~~~~
* tab_complete
    - **default**: 1000
    - **description**: How often tab-complete packets can be sent in milliseconds.

game_version
~~~~~~~~~~~~
* **default**: ' ' (empty string)
* **description**: The supported versions displayed to the client. Default is a 
  comma separated list of supported versions. For example 1.8.x, 1.9.x, 1.10.x

disable_entity_metadata_rewrite
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: This setting disables entity metadata rewriting in favor
  of sending a join packet to the client. It offers a more robust solution for
  modded environments but can cause plugins to break.
