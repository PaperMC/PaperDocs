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

This repository is built using the [mkdocs platform](http://www.mkdocs.org/), as such, it requires a few things.

1. Install [Python 3](https://www.python.org)
2. Install [mkdocs](http://www.mkdocs.org/#installation) via Python by using `pip install mkdocs`

From there, you can build this repo into a set of sources for remote deployment using

`mkdocs build`

Or, if you're just contributing back to us, you can have mkdocs run a local webserver that will monitor file changes using

`mkdocs serve`

The local mkdocs webserver will monitor changes to the source files and automatically refresh any clients connected to the local webserver. It is the preferred way to do documentation development.

## Contact

If you need anything else not covered above, you can contact us directly via IRC

  + #Paper on EsperNet ([Webchat](https://webchat.esper.net/?channels=paper))
  + #Paper on SpigotIRC ([Webchat](http://elmer.spi.gt/iris/?channels=paper))
