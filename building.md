Building PaperSpigot
====================
## Server Administrators
### PaperSpigot requires Java 8!
To build PaperSpigot, please start by installing the latest version of the [Java Development Kit (8)](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) for your platform, next, install [git for your platform](https://git-scm.com/). They are required and the server will not build without them.

After you have the above dependencies, download [PaperTools, from here](https://ci.destroystokyo.com/job/PaperSpigot-BuildTools/), and put it in an empty folder. Try and keep the folder path free of spaces or exclamation points, as these sometimes break the build tool.

After the tools finish, you'll be able to PaperSpigot in the same directory you ran the PaperTools jar file from. You'll also be able to find the API and server jars in your local maven repository, ready for development work (if you so need them).

### Windows
On Windows, open git bash and use the ```cd``` command to navigate to the directory you placed the PaperTools jar file in.
Then, within git bash, type ```java -jar PaperTools.jar``` to start the process. Be aware it may take a long time.

[A video tutorial for windows users is available here](https://www.youtube.com/watch?v=CyReQZpDvYg)

### Linux
On linux, open a shell and use the ```cd``` command to navigate to the directory you placed the PaperTools jar file in.

From the shell, use ```git config --global --unset core.autocrlf```

and then run ```java -jar BuildTools.jar``` to start the process

## Build Issues
If you run into any issues with PaperTools, first consult the [SpigotMC BuildTools page](https://www.spigotmc.org/wiki/buildtools/), as we share a large amount of code with them. If that doesn't help you fix your problem, contact us in [#PaperSpigot on irc.spi.gt](http://irc.spi.gt/iris/?channels=PaperSpigot) for further assistance.