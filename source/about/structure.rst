========================
The Structure of PaperMC
========================

+-------------------------------------------------------------------+-------------------------------------------------------+
| Project                                                           | Description                                           |
+===================================================================+=======================================================+
| `Paper <https://github.com/PaperMC/Paper>`_                       | Shared API & Server repository                        |
+-------------------------------------------------------------------+-------------------------------------------------------+
| `PaperDocs <https://github.com/PaperMC/PaperDocs>`_               | All documentation for the project                     |
+-------------------------------------------------------------------+-------------------------------------------------------+
| `Paperclip <https://github.com/PaperMC/Paperclip>`_               | A wrapper around Paper-Server to make it easy to      |
|                                                                   | distribute and easy to use                            |
+-------------------------------------------------------------------+-------------------------------------------------------+
| `PaperTestServer <https://github.com/PaperMC/PaperTestServer>`_   | A skeleton test server we use for testing             |
|                                                                   | plugin compatibility                                  |
+-------------------------------------------------------------------+-------------------------------------------------------+

Paper
=====

This is our main repository. Changes to Spigot-API and Spigot-Server are
maintained as a (large) set of individual patch files in this repository.
This repository contains only bash scripts and patch files. The bash scripts
present in this repo will then take the patches to Spigot-API and to
Spigot-Server and apply them.

From this process comes a proper, buildable, Paper-API and Paper-Server that we
can then build as a standard maven project.

Paper-API is then compiled and sent to up to our maven server for developers
to build their plugins against.

Paper-Server is compiled, then handed off to the Paperclip launcher tool.
More on that in a second. From there, we distribute it to you!

Paperclip
=========

Paperclip is a binary patch distribution system for Paper-Server.
We give it a normal, compiled, Paper-Server jar file. From there,
Paperclip generates a binary patch of the difference between that
Paper-Server jar and the vanilla Minecraft server. It then takes that binary
patch and includes it in a separate jar file along with some information about
the version of Minecraft it came from, stored as a JSON file, and some minimal
code to launch it.

When an end-user runs Paperclip for the first time a few things happen.

1. Paperclip checks the JSON file it stores internally to see what version of
   Minecraft it was built against.

2. Paperclip downloads a vanilla minecraft jar for that particular version
   directly from Mojang.

3. Paperclip checks to see that the vanilla jar it just downloaded is the same
   as the one it was built against using a SHA-256 hash.

4. Paperclip applies the included binary patch of Paper changes to the
   vanilla jar.

5. Paperclip verifies that the final patched version of the server is the same
   as the one we originally built using a SHA-256 hash.

6. Paperclip does some java classloader magic and starts the server right then
   and there.

It only does this on the first run, after this first run, it will skip parts of
that process as it deems necessary.

For example, when Paper pushes a new build of Paper for a specific Minecraft
version, Paperclip will not re-download the vanilla jar, it'll simply re-patch
it and start up.

If there is a Minecraft version change (like 1.9 to 1.10), only then will
Paperclip re-download the vanilla Minecraft jar.
