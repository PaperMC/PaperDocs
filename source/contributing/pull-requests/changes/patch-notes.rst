===========
Patch Notes
===========

When submitting patches to Paper, we may ask you to add notes to the patch header. While we do not require it for all changes, you should add patch notes when the changes you're making are technical, complex, or require an explanation of some kind. It is very likely that your patch will remain long after we've all forgotten about the details of your PR; patch notes will help us maintain it without having to dig back through GitHub history looking for your PR.

These notes should express the intent of your patch, as well as any pertinent technical details we should keep in mind long-term. Ultimately, they exist to make it easier for us to maintain the patch across major version changes.

If you add a message to your commit in the ``Paper-Server``/``Paper-API`` directories, the rebuild patches script will handle these patch notes automatically as part of generating the patch file. If you are not extremely careful, you should always just ``squash`` or ``amend`` a patch (see the above sections on modifying patches) and rebuild.

Editing messages and patches by hand is possible, but you should patch and rebuild afterwards to make sure you did it correctly. This is slower than just modifying the patches properly after a few times, so you will not really gain anything but headaches from doing it by hand.

Underneath is an example patch header/note:

.. code-block:: patch

    From 02abc033533f70ef3165a97bfda3f5c2fa58633a Mon Sep 17 00:00:00 2001
    From: Shane Freeder <theboyetronic@gmail.com>
    Date: Sun, 15 Oct 2017 00:29:07 +0100
    Subject: [PATCH] revert serverside behavior of keepalives

    This patch intends to bump up the time that a client has to reply to the
    server back to 30 seconds as per pre 1.12.2, which allowed clients
    more than enough time to reply potentially allowing them to be less
    tempermental due to lag spikes on the network thread, e.g. that caused
    by plugins that are interacting with netty.

    We also add a system property to allow people to tweak how long the server
    will wait for a reply. There is a compromise here between lower and higher
    values, lower values will mean that dead connections can be closed sooner,
    whereas higher values will make this less sensitive to issues such as spikes
    from networking or during connections flood of chunk packets on slower clients,
    at the cost of dead connections being kept open for longer.

    diff --git a/src/main/java/net/minecraft/server/PlayerConnection.java b/src/main/java/net/minecraft/server/PlayerConnection.java
    index a92bf8967..d0ab87d0f 100644
    --- a/src/main/java/net/minecraft/server/PlayerConnection.java
    +++ b/src/main/java/net/minecraft/server/PlayerConnection.java