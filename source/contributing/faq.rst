=========================================
Contributing: Frequently Asked Questions
=========================================

#################################
I can't find the NMS file I need!
#################################

By default, Paper (and upstream) only import files we make changes to. If you would like to make changes to a file that isn't present in Paper-Server's source directory, you just need to add it to our import script ran during the patching process.

1. Save (rebuild) any patches you are in the middle of working on! Their progress will be lost if you do not.
2. Identify the name(s) of the file(s) you want to import.
3. Open the file at ``./scripts/importmcdev.sh`` and add the name of your file to the script. Skip to the 2nd last header and follow the instructions there;
4. Re-patch the server ``./paper patch``;
5. Edit away!

.. hint:: 
    For step 2, a complete list of all possible file names can be found at: ``./work/Minecraft/$MCVER/spigot/net/minecraft/server``. You might also find `MiniMappingViewer`_ very useful to find the file you need.

.. warning::
    ❗ This change is temporary! **DO NOT COMMIT CHANGES TO THIS FILE!**
    Once you have made your changes to the new file, and rebuilt patches, you may undo your changes to ``importmcdev.sh``.

Any file modified in a patch file gets automatically imported, so you only need this temporarily to import it to create the first patch.

To undo your changes to the file, type ``git checkout scripts/importmcdev.sh``.

###########################################
Where can I learn how to name method/field?
###########################################

For most cases, it is preferred if you use `yarn`_, as their license works with Paper's license. If you can't do that, `MiniMappingViewer`_ is always around to provide you with more of a general idea, but you cannot use the Mojang names for more than understanding the code.

`yarn`_ is in general more thorough than Mojang's own mappings, as they include method arguments as well, whereas Mojang's do not. If you need local variables to understand the code, you might be more lucky with ModCoderPack.

For more information on the Mojang name licensing issues, check this out: https://cpw.github.io/MinecraftMappingData.html.

.. _patching-building-really-slow:

####################################################
Patching and building is really slow, what can I do?
####################################################

This only applies if you're running Windows. If you're running a prior Windows release, either update to Windows 10 or move to macOS/Linux/BSD.

In order to speed up patching process on Windows, it's recommended you get WSL 2. This is available in Windows 10 v2004, build 19041 or higher. (You can check your version by running ``winver`` in the run window (Windows key + R)). If you're out of date, update your system with the `Windows Update Assistant`_.

To setup WSL 2, follow the information here: https://docs.microsoft.com/en-us/windows/wsl/install-win10

You will most likely want to use the Ubuntu apps. Once it's set up, install the required tools with ``sudo apt-get update && sudo apt-get install $TOOL_NAMES -y``. Replace ``$TOOL_NAMES`` with the packages found in the requirements. You can now clone the repository and do everything like usual.

.. warning::
    ❗ Do not use the /mnt/ directory in WSL! Instead, mount the WSL directories in Windows like described here: https://www.howtogeek.com/426749/how-to-access-your-linux-wsl-files-in-windows-10/


##################################################
I wrote some API, how do I use it in Paper-Server?
##################################################

To install the API to your local maven repository, do the following:

* Enter the API directory by running ``./paper api``;
* Run ``mvn install``.

    * If you are working on a patch without much care for whether the tests pass, you can instead run ``mvn install -DskipTests``. Do not PR changes without running tests first.
    * If a test failed, you have to identify the failing tests by scrolling up a couple of lines (i.e. around 50-200). You should find it fairly quickly.
    * If you later need to use the Paper-API, you might want to remove the jar from your local maven repository. If you use Windows and don't usually build using WSL, you might not need to do this.

You can now use the API in your plugin to test it before PRing. You will also need to do this to build the Server with the implemented API.

.. _MiniMappingViewer: https://minidigger.github.io/MiniMappingViewer/
.. _yarn: https://github.com/FabricMC/yarn
.. _Windows Update Assistant: https://www.microsoft.com/en-us/software-download/windows10