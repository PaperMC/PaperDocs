Plugin and Implementation Developers
==========
## Plugin Developers
Plugin developers may be interested in the API additions made by Paper to Spigot-API, and the Bukkit platform. They include:

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

JavaDocs for the above features can be downloaded automatically via maven, or browsed online from [here](http://javadocs.destroystokyo.com).

To build against Paper-API, you need to add our maven repository to your plugin's POM:
```
<repositories>
    <repository>
        <id>destroystokyo-repo</id>
        <url>https://repo.destroystokyo.com/repository/maven-public//</url>
    </repository>
</repositories>
```
and then add it to your dependencies:
```
<dependencies>
    <dependency>
        <groupId>com.destroystokyo.paper</groupId>
        <artifactId>paper-api</artifactId>
        <version>1.11.2-R0.1-SNAPSHOT</version>
        <scope>provided</scope>
    </dependency>
</dependencies>
```
Gradle users should use the same information, formatted in their own special gradle-y way.

## Timings v2
Timings v2 supports a new API for plugin developers to properly add their own Timings to the v2 data export.

Example:

```
try (Timing timed = Timings.ofStart(plugin, "My Timed Section")) {
    // code
}
```

Because Paper requires Java 8, you can safely use try-with-resources style blocks!
Every thing in that section of the try block will be timed under "Your Plugin :: My Timed Section"


## Implementation Developers
All of Paper's code is public. We welcome discussion and contribution.
You can find all of our [code here](https://github.com/PaperMC) on GitHub, and are welcome to [talk with us here](https://paperchat.emc.gs). We're around fairly often, feel free to come talk. Development documentation is available from within the ```CONTRIBUTING.md``` file located in the project's root.

Paper boasts a much less political process for Pull Requests, and open to reasonable improvements that do not break things for people.
