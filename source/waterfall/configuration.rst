=============
Configuration
=============

This page details the various configuration settings exposed by Waterfall and Travertine.

If you want information on settings in BungeeCord's config.yml you should see
their respective documentation pages.

* `BungeeCord Configuration (config.yml) <https://www.spigotmc.org/wiki/bungeecord-configuration-guide/>`_

.. warning::
    Configuration values change frequently at times. It is possible for the
    information here to be incomplete. If you cannot find what you're looking for
    or think something may be wrong, :doc:`../about/contact`

    Last updated June 24th 2020 for MC 1.8-1.16, Waterfall build #354

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
* **default**: ‘ ‘ (empty string)
* **description**: The supported versions displayed to the client. Default is a 
  comma separated list of supported versions. For example 1.8.x, 1.9.x, 1.10.x

disable_entity_metadata_rewrite
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether to disable entity metadata rewriting.
