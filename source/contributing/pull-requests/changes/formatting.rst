==================
Formatting Changes
==================

All modifications by Paper to non-Paper files should be appropriately marked.

* Multi-line changes start with ``// Paper start`` and end with ``// Paper end``;
* You can put a comment with an explanation if it isn't obvious, like this: ``// Paper start - reason``.

.. hint::
    * The comments should generally be about the reason the change was made, what it was before, or what the change is.
    * Multi-line messages should start with ``// Paper start`` and use ``/* Multi line message here */`` for the message itself.
  
* One-line changes should have ``// Paper`` or ``// Paper - reason``.

Here's an example of how to mark changes by Paper:

.. code-block:: java

    entity.getWorld().dontbeStupid(); // Paper - was beStupid() which is bad
    entity.getFriends().forEach(Entity::explode);
    entity.a();
    entity.b();
    // Paper start - use plugin-set spawn
    // entity.getWorld().explode(entity.getWorld().getSpawn());
    Location spawnLocation = ((CraftWorld)entity.getWorld()).getSpawnLocation();
    entity.getWorld().explode(new BlockPosition(spawnLocation.getX(), spawnLocation.getY(), spawnLocation.getZ()));
    // Paper end

We generally follow usual Java style (aka. Oracle style), or what is programmed into most IDEs and formatters by default. There are a few notes, however:

* It is fine to go over 80 lines as long as it doesn't hurt readability. There are exceptions, especially in Spigot-related files
* When in doubt or the code around your change is in a clearly different style, use the same style as the surrounding code.
