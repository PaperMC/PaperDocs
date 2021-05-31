======================
Rebasing Pull Requests
======================

Steps to rebase a PR to include the latest changes from ``master``.
These steps assume the ``origin`` remote is your fork of this repository and ``upstream`` is the official PaperMC repository.

1. Pull latest changes from upstream's master: ``git checkout master`` && ``git pull upstream master``.
2. Checkout feature/fix branch and rebase on master: ``git checkout patch-branch && git rebase master``.
3. Apply updated patches: ``./paper patch``.
4. If there are conflicts, fix them.
5. If your PR creates new patches instead of modifying exist ones, in both the ``Paper-Server`` and ``Paper-API`` directories, ensure your newly-created patch is the last commit.

.. hint::
    You can do this by either:
   
    * Renaming the patch file with a large 4 digit number in front (e.g. ``9999-Patch-to-add-some-new-stuff.patch``)
    * Run ``git rebase --interactive upstream/upstream`` and move the commits to the end.
  
6. Rebuild patches: ``./paper rebuild``.
7. Force push changes: ``git push --force``.
