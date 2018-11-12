# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS      =
SPHINXBUILD     = sphinx-build
SPHINXAUTOBUILD = sphinx-autobuild
SOURCEDIR       = source
BUILDDIR        = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "  livehtml    to make HTML files whenever source files are modified"

.PHONY: help Makefile livehtml

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

livehtml:
	$(SPHINXAUTOBUILD) -b html $(SOURCEDIR) $(BUILDDIR)/html -H 0.0.0.0