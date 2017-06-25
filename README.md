# PaperDocs
This is the repository for all project documentation under the PaperMC umbrella.
At this point, only the main Paper Server project is documented here.

This repository publishes to PaperMC's documentation site, currently hosted [here; on RTD](https://paper.readthedocs.io).

## Branching and Content

The published public documentation for the currently supported PaperMC implementation will live on the `stable` branch.


`master` will be used as a staging area for changes to our documentation before being published, at which point it will be merged into the `stable` branch.

Documentation for old versions that are out-of-support will live at `ver/$version` similar to how the main [PaperMC server](https://github.com/PaperMC/Paper) repo handles legacy versions.

Our legacy documentation will continue to live at `Paper/$version` at least for the short term.

## Contributions

PaperMC has a small team of active developers that focus most of their time on the main server implementation (Paper) itself. In order to keep this documents up-to-date and in good quality, we rely on your contributions. In a perfect world we'd have an individual or team dedicated to documentation, but we currently do not.

We appreciate any and all contributions we receieve and hope that if you see something that needs changing, you'll help us out. Thanks.

## Building

You can setup an environment so you can instantly see the changes that make to the docs.

1. [Install Python 3](https://www.python.org)
2. [Install node.js](https://nodejs.org)

In terminal or the command line, within the directory containing this README, run the following commands:

	npm install -g gulp
	npm install
	pip install -r requirements.txt
	gulp

Your browser should open to reveal the docs. When you make a change to the documentation, the docs should refresh in the browser (possibly after a few seconds).

## Contact

If you need anything else not covered above, you can contact us directly via IRC

  + #Paper on EsperNet ([Webchat](https://webchat.esper.net/?channels=paper))
  + #Paper on SpigotIRC ([Webchat](http://elmer.spi.gt/iris/?channels=paper))

## Special Thanks
This project is based on the awesome work done by the [SpongePowered team](https://github.com/SpongePowered/) and [all those](https://github.com/SpongePowered/SpongeDocs/graphs/contributors) who helped them with their [SpongeDocs](https://github.com/SpongePowered/SpongeDocs) platform.
Therefore it is only appropriate we thank them for all their hardwork that allowed us to build our own based on the structures they created for their own platform.
