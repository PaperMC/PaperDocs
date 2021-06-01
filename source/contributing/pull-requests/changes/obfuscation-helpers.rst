===================
Obfuscation Helpers
===================

In an effort to make future updates easier on ourselves, Paper tries to use obfuscation helpers whenever possible. The purpose of these helpers is to make the code more readable and maintainable. These helpers should be be made as easy to inline as possible by the JVM whenever possible.

An obfuscation helper to access an obfuscated item may be as simple as something like this:

.. code-block:: java

    public final int getStuckArrows() { return this.bY(); } // Paper - OBFHELPER

Or it may be as complex as forwarding an entire method so that it can be overridden later:

.. code-block:: java

    public boolean be() {
        // Paper start - OBFHELPER
        return this.pushedByWater();
    }

    public boolean pushedByWater() {
        // Paper end
        return true;
    }

While they may not always be done in exactly the same way, the general goal is always to improve readability and maintainability. Use your best judgment and do what fits best in your situation.