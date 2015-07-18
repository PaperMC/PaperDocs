Building PaperSpigot
====================
Due to [Wolvereness' DMCA](https://github.com/github/dmca/blob/master/2014-09-05-CraftBukkit.md) it is illegal to distribute PaperSpigot
Therefore, you have to compile PaperSpigot yourself. There are two options: [Building from Source](#source) or [Using Techcable's BuildTools](#buildtools)

## BuildTools
Techcable has created a script to compile PaperSpigot for you.

It requies maven and shell

### Windows Instructions
First you have to install [git bash](https://msysgit.github.io/)
Then you have to [install maven](https://maven.apache.org/install.html)
Then you must run the following commands:
````shell
curl "https://gist.githubusercontent.com/Techcable/e6fd63206076684d45aa/raw/22427aa2cc0034fdd8b9f64994d9dbd580f97597/build.sh" > build.sh
bash build.sh
````
You can find the paper spigot jar in output/paper-spigot.jar

### Linux Instructions
Install Maven (`sudo apt-get install maven` on debian and ubuntu)
Install Git (`sudo apt-get install git` on debian and ubuntu)
Run the following commands:
````shell
curl "https://gist.githubusercontent.com/Techcable/e6fd63206076684d45aa/raw/22427aa2cc0034fdd8b9f64994d9dbd580f97597/build.sh" > build.sh
bash build.sh
````
You can find the paper spigot jar in output/paper-spigot.jar

## Source

### Compiling
Make sure you have git and maven installed (see above from instructions)

1. Initialize the submodules `git submodule update --init`
2. Apply the patches `./applyPatches.sh`
3. Run maven `mvn clean install`

### Patching

**The patches must be applied before you can add your own patches**

#### Creating a patch for the API
cd PaperSpigot-API

Add your file to commit : `git add <file>`

Commit : git commit -m <msg>

cd ..

Create Patch ./rebuildPatches.sh


#### Creating a patch for the Server
cd PaperSpigot-Server

Add your file to commit : `git add <file>`

Commit : git commit -m <msg>

cd ..

Create Patch ./rebuildPatches.sh