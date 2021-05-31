================
Creating Patches
================

Adding patches to Paper is very simple:

1. Modify ``Paper-Server`` and/or ``Paper-API`` with the appropriate changes;
2. Type ``git add .`` inside these directories to add your changes;
3. Run ``git commit`` with the desired patch message;
4. Run ``./paper rebuild`` in the main directory to convert your commit into a new patch;
5. PR the generated patch file(s) back to this the Paper repository.

Your commit will be converted into a patch that you can then PR into Paper.

.. warning::
    ❗ Please note that if you have some specific implementation detail you'd like to document, you should do so in the patch message or in comments.
