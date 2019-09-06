==========
Optimising
==========

Introduction
============

There are a few wasy to optimize your server to produce better performance and one of these ways is to edit:

1. paper.yml
2. spigot.yml
3. bukkit.yml

These files can be edited by any text editor like notepad/notepad++.

paper.yml
#########

While inside paper.yml, look for world-settings.

*max-auto-save-chunks-per-tick* should be set to 24 by default, decreasing this by half will help significantly.
Right now I'm using 6-8. 
::

  max-auto-save-chunks-per-tick: 6


*max-entity-collision* should be set to 8. Try decreasing it.
 
::

  max-entity-collisions: 4
  

spigot.yml
#########

In *world-settings* find *entity-tracking-range:* and decrease it.
The following is what I use.

::

  entity-tracking-range:
      players: 32
      animals: 32
      monsters: 32
      misc: 24
      other: 48
