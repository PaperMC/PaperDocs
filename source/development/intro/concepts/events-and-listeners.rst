====================
Events and Listeners
====================

Events and Listeners are important concepts in Paper platform plugin development. Events are "fired" (as we like to say) by the server and Listeners "catch" these events and respond to them appropriately.

In Paper, an example of an Event is the ``PlayerMoveEvent`` which is "fired" every time the Player moves in game. This includes moving their head to look around, walking somewhere, flying, or swimming. Any time their position or direction of sight changes, the ``PlayerMoveEvent`` will let us know.

Other events (in Paper) include the `PlayerItemConsumeEvent`_, the `WeatherChangeEvent`_, or the `RaidTriggerEvent`_. There are more many events as well which you can find in the Paper `JavaDoc`_.

.. _PlayerItemConsumeEvent: https://papermc.io/javadocs/paper/1.16/org/bukkit/event/player/PlayerItemConsumeEvent.html
.. _WeatherChangeEvent: https://papermc.io/javadocs/paper/1.16/org/bukkit/event/weather/WeatherChangeEvent.html
.. _RaidTriggerEvent: https://papermc.io/javadocs/paper/1.16/org/bukkit/event/raid/RaidTriggerEvent.html
.. _JavaDoc: https://papermc.io/javadocs/paper/1.16/