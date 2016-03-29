Paper 1.9 - Developers
==========
## Plugin Developers
Plugin developers may be interested in the API additions made by PaperSpigot to Spigot-API, and the Bukkit platform. They include:

- Player Affects Spawning API
    - Control whether the player will cause mobs to spawn
- TNT Source Location
    - Get the original source location of TNT and FallingBlock entities
- PlayerLocaleChangeEvent
    - An event that fires when a player changes their locale
- EntityPathfindEvent
    - Fires when an Entity decides to start moving to a location.
    - This is not the same as a move event. This only fires when an entity chooses to start moving to a location, and allows cancelling that pathfind.
- EntityAddToWorldEvent / EntityRemoveFromWorldEvent
    - Called when entities are added or removed from the world. Not to be confused with Spawn events. This fires on chunk load/unload.
- Player View Distance API
    - Dynamically set the server view distance, per-player
- BeaconEffectEvent
    - An event that fires when a player is affected by a Beacon's radius effect
- Get TPS API
    - An API to return the server's TPS, no more ugly reflection

## Timings v2
Timings v2 supports a new API for plugin developers to properly add their own Timings to the v2 data export.

Example:

```try (Timing timed = Timings.ofStart(plugin, "My Timed Section")) {
// code
}```

Because Paper requires Java 8, you can safely use try-with-resources style blocks!
Every thing in that section of the try block will be timed under "Your Plugin :: My Timed Section"


## Implementation Developers
All of Paper's code is public. We welcome discussion and contribution.
You can find all of our [code here](https://github.com/PaperMC) on GitHub, and are welcome to [talk with us here](https://paperchat.emc.gs). We're around fairly often, feel free to come talk.

Paper boasts a much less political process for Pull Requests, and open to reasonable improvements that do not break things for people.
