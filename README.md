# PaperDocs
This is the repository for all project documentation under the PaperMC umbrella.
At this point, only the main Paper Server project is documented here.

This repository publishes to PaperMC's documentation site, currently hosted [here; on RTD](https://paper.readthedocs.io).

## Branching and Content

The published public documentation for the currently supported PaperMC implementation lives on the `master` branch.

## Contributions

PaperMC has a small team of active developers that focus most of their time on the main server implementation (Paper) itself. In order to keep this documents up-to-date and in good quality, we rely on your contributions. In a perfect world we'd have an individual or team dedicated to documentation, but we currently do not.

We appreciate any and all contributions we receive and hope that if you see something that needs changing, you'll help us out. Thanks.

## Building

### Environment Setup

You can set up an environment, so you can instantly see the changes that are made to the docs.

1. [Install Python 3](https://www.python.org)
2. Install the needed sphinx packages

After installing Python 3 (as well as python-pip), run the following command to install the sphinx packages:

	$ pip install --user -r requirements.txt

[You may need to add the user binary directory to $PATH](https://packaging.python.org/tutorials/installing-packages/#installing-to-the-user-site)

### Building

To build the source into a proper HTML site, run the following command on Linux/macOS/WSL

	$ make html

To build the source on Windows without WSL, open CMD and execute the make.bat script:

	make.bat html

### Building Automatically On Change

To automatically rebuild the HTML files as you edit the .rst source files, execute the following command:

	$ make auto

Open your browser and connect to the address provided by the command. When you make a change to the documentation, the docs should refresh in the browser (possibly after a few seconds).

## Contact

If you need anything else not covered above, you can contact us directly via IRC or Discord

  + PaperMC on Discord ([Invite Link](https://discord.gg/papermc))
  + #Paper on EsperNet ([Webchat](https://webchat.esper.net/?channels=paper))
  + #Paper on SpigotIRC ([Webchat](http://elmer.spi.gt/iris/?channels=paper))

## Special Thanks
This project is based on the awesome work done by the [SpongePowered team](https://github.com/SpongePowered/) and [all those](https://github.com/SpongePowered/SpongeDocs/graphs/contributors) who helped them with their [SpongeDocs](https://github.com/SpongePowered/SpongeDocs) platform.
Therefore, it is only appropriate we thank them for all of their hard work in which allowed us to build our own, based on the structures they created for their own platform.
