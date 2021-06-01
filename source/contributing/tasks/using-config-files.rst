=========================
Using Configuration Files
=========================

To use a configurable value in your patch, add a new entry in either the ``PaperConfig`` or ``PaperWorldConfig`` classes. Use ``PaperConfig`` if a value must remain the same throughout all worlds, or the latter if it can change between worlds. World-specific configuration options are preferred whenever possible.

PaperConfig example
-------------------

.. code-block:: java

    public static boolean saveEmptyScoreboardTeams = false;
    private static void saveEmptyScoreboardTeams() {
        // This is called automatically!
        // The name also doesn't matter.
        saveEmptyScoreboardTeams = getBoolean("settings.save-empty-scoreboard-teams", false);
    }

Notice that the field is always public, but the setter is always private. This is important to the way the configuration generation system works. To access this value, reference it as you would any other static value:

.. code-block:: java

    if (!PaperConfig.saveEmptyScoreboardTeams) {

It is often preferred that you use the fully qualified name for the configuration class when accessing it, like so: ``com.destroystokyo.paper.PaperConfig.valueHere``.

If this is not done, a developer for Paper might fix that for you before merging, but it's always nice if you make it a habit where you only need 1-2 lines changed.

PaperWorldConfig example
------------------------

.. code-block:: java

    public boolean useInhabitedTime = true;
    private void useInhabitedTime() {
        // This is called automatically!
        // The name also doesn't matter.
        useInhabitedTime = getBoolean("use-chunk-inhabited-timer", true);
    }

Again, notice that the field is always public, but the setter is always private. To access this value, you'll need an instance of the ``net.minecraft.World`` object:

.. code-block:: java

    return this.world.paperConfig.useInhabitedTime ? this.w : 0;