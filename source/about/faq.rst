==========================
Frequently Asked Questions
==========================

.. contents::
   :depth: 2
   :local:

General
=======

What is Paper?
--------------

Paper is a fork of the Spigot server implementation (which is itself a fork of CraftBukkit).
Paper strives to bring improved performance, more features, and more APIs for developers to build awesome plugins with.

What do I need to run it?
-------------------------

Paper requires the Java Runtime Environment to run. Specifically, it requires at least Java version 8. Once that is installed you're all good to go!
If you don't already have a Java 8 Runtime, `it's easy to download and install <http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html>`_.

TODO: Link to general setup page here :D

Where do I get it?
------------------

Builds of Paper are already available from our `continuous integration server <https://ci.destroystokyo.com/job/PaperSpigot/>`_.

Alternatively, you can always get the latest build by clicking `this link <https://ci.destroystokyo.com/job/PaperSpigot/lastSuccessfulBuild/artifact/paperclip.jar>`_.

Can I run Bukkit plugins on Paper?
----------------------------------

Yep! You absolutely can. Paper takes care to maintain compatibility with Bukkit plugins made by the community.

Can I run Spigot plugins on Paper too?
--------------------------------------

Yes you can! We don't like to break things most of the time. Sometimes there are plugin authors who do, but we can usually make things work.

Is there anywhere to get plugins for Paper?
-------------------------------------------

Many plugins that work with, and are made for, Paper are available on the `AquiferMC resource section <https://aquifermc.org/resources/>`_. Sometimes you'll also see them elsewhere, you just have to keep your eyes open.

Server Administrators
=====================

What can I expect from switching to Paper?
------------------------------------------

When migrating your CraftBukkit or Spigot server to Paper, it is not uncommon to see a noticeable performance improvement.

.. note::
    Though you may see an improvement, Paper is not a silver bullet. Ultimately, you are responsible for the performance of your server, good or bad, on any platform. Tailoring your server to best fit your players and gamemodes is ultimately the key to great performance.

Your plugins and worlds will not be changed and both should work just fine after the change.

Will players be able to tell?
-----------------------------

That depends. Your players may see a benefit to gameplay because of the performance improvement, assuming you see one. On a properly maintained server, your players may not even be able to tell the difference.

Developers
==========

What can I do with Paper?
-------------------------

Paper provides additional APIs ontop of Bukkit, exposing new vanilla elements and even some of its own for you to play with.

TODO: Link to developer docs here :D

Does Paper make any breaking changes to the API?
------------------------------------------------

Forunately, Paper does not make breaking API changes so it can maintain plugin compatibility with upstream Spigot and CraftBukkit.
At the same time, this means we are also sometimes limited with what we can do and how we can do it.

It's a double-edged sword.
