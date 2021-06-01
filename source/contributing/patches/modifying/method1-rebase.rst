=================
Method 1: Rebase
=================

This method works by temporarily resetting your HEAD to the desired commit to edit it using git rebase.

.. warning::
    ❗ While in the middle of an edit, you will not be able to compile unless you also reset the opposing module(s) to a related commit. In the API's case, you must reset the Server, and reset the API if you're editing the Server.

**Using the Paper tool**

The PaperMC build tool provides a handy command to automatically do this type of patch modification.

1. Type ``./paper edit server`` or ``./paper edit api`` depending on which project you want to edit;

.. hint::
    * It should show something like `this`_ in the text editor you get.
    * If your editor does not have a "menu" at the bottom, you're using ``vim``. If you don't know how to use ``vim`` and don't want to learn, enter ``:q!`` and press ``enter``. Before redoing this step, do ``export EDITOR=nano`` for an easier editor to use.
   
1. Replace ``pick`` with ``edit`` for the commit/patch you want to modify, and "save" the changes;

.. hint::
    Only do this for one commit at a time.

3. Make the changes you want to make to the patch;
4. Type ``./paper edit continue`` in the root directory to finish and rebuild patches;
5. PR your modified patch file(s) back to this repository.

**Manual method: Stashing**

In case you need something more complex or want more control, these step-by-step instruction do exactly what the above slightly automated system above does.

1. If you have changes you are working on, type ``git stash`` to store them for later;

.. hint::
    You can type ``git stash pop`` to get them back at any point.
   
2. Type ``git rebase -i upstream/upstream``;

.. hint::
    * It should show something like `this`_ in the text editor you get.
    * If your editor does not have a "menu" at the bottom, you're using ``vim``.
    * If you don't know how to use ``vim`` and don't want to learn, enter ``:q!`` and press ``enter``. Before redoing this step, do ``export EDITOR=nano`` for an easier editor to use.

3. Replace ``pick`` with ``edit`` for the commit/patch you want to modify, and "save" the changes;

.. hint::
    Only do this for one commit at a time.
    
4. Make the changes you want to make to the patch;
5. Type ``git add .`` to add your changes;
6. Type ``git commit --amend`` to commit;

   * Make sure to add ``--amend`` or else a new patch will be created.
   * You can also modify the commit message and author here.

7. Type ``git rebase --continue`` to finish rebasing;
8. Type ``./paper rebuild`` in the root directory;
   
.. hint::
    This will modify the appropriate patches based on your commits.
    
9. PR your modified patch file(s) back to this repository.

.. _this: https://gist.github.com/zachbr/21e92993cb99f62ffd7905d7b02f3159