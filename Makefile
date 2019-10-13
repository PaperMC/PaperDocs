# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS      =
SPHINXBUILD     = sphinx-build
SPHINXPROJ      = PaperDocs
SOURCEDIR       = source
BUILDDIR        = build
SPHINXAUTOBUILD = sphinx-autobuild
AUTOBUILDDIR    = build/auto

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Auto rebuild on change support
auto:
	@$(SPHINXAUTOBUILD) "$(SOURCEDIR)" "$(AUTOBUILDDIR)" $(SPHINXOPTS) $(0)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)