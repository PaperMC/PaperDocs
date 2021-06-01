============
Requirements
============

To get started with PRing changes, you'll need the following software, most of which can be obtained in (most) package managers such as apt (Debian / Ubuntu; you will most likely use this for WSL), homebrew (macOS / Linux), and more:

- ``git`` (package ``git`` everywhere);
- ``patch`` (often package ``patch``);
- A Java 16 or later JDK (packages vary, use Google/DuckDuckGo/etc.). If you need one, you can find them on AdoptOpenJDK.
- ``maven`` 3.6.3 or later (often package ``maven``; can be found on Apache's site too);
- ``curl`` (package ``curl`` everywhere).

If you're on Windows, see :ref:`patching-building-really-slow`

If you're compiling with Docker, you can use the ``adoptopenjdk`` images like so:

.. parsed-literal::

    # docker run -it -v "$(pwd)":/data --rm adoptopenjdk:8-jdk-hotspot bash
    Pulling image...

    root@abcdefg1234:/# javac -version
    javac 1.8.0_252