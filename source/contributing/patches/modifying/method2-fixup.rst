===============
Method 2: Fixup
===============

If you are simply editing a more recent commit or your change is small, simply making the change at HEAD and then moving the commit after you have tested it may be easier.

This method has the benefit of being able to compile to test your change without messing with your HEADs.

**Manual method**

1. Make your change while at HEAD;
2. Make a temporary commit. You don't need to make a message for this;
3. Type ``git rebase -i upstream/upstream``, move (cut) your temporary commit and move it under the line of the patch you wish to modify;
4. Change the ``pick`` to the appropriate action:
    
.. hint::
    * ``f``/``fixup``: Merge your changes into the patch without touching the message.
    * ``s``/``squash``: Merge your changes into the patch and use your commit message and subject.

5. Type ``./paper rebuild`` in the root directory;

.. hint::
    This will modify the appropriate patches based on your commits.

6. PR your modified patch file(s) back to this repository.

**Automatic method**

1. Make your change while at HEAD;
2. Make a fixup commit. ``git commit -a --fixup <hashOfPatchToFix>``;

.. hint::
    * You can also use ``--squash`` instead of ``--fixup`` if you want the commit message to also be changed.
    * You can get the hash by looking at ``git log`` or ``git blame``; your IDE can assist you too.
    * Alternatively, if you only know the name of the patch, you can do ``git commit -a --fixup "Subject of Patch name"``.


1. Rebase with ``autosquash``: ``git rebase --autosquash -i upstream/upstream``. This will automatically move your fixup commit to the right place, and you just need to "save" the changes.
2. Type ``./paper rebuild`` in the root directory;

.. hint::
    This will modify the appropriate patches based on your commits.

3. PR your modified patch file(s) back to this repository.
