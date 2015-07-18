PaperSpigot
============
A fork of spigot that improves performance and improves gameplay
Almost everything in PaperSpigot is configurable: [performance options](config/performance.md), [gameplay options](config/gameplay.md), and [various others](config/other.md)
To get paper spigot use [Techcable's 1.7 BuildTools](building.md#buildtools) or compile from source](building.md#source)

## Support
You can get support for PaperSpigot on [#PaperSpigot on spigot IRC](http://irc.spi.gt/iris/?channels=PaperSpigot)

## Features

### Performance Improvements
- Drop falling blocks and tnt that are too high
  - The maximum height is configurable
  - This prevents the server from spending too much time doing block physics
- Improve TileEntity ticking
  - This makes things like chests and signs go a lot faster
  - Should improve performance a lot with servers with a lot of hoppers, chests, and other tile entties
- Remove certain entities that go through and unloaded chunk
  - This prevents to many chunks from being loaded
  - This only effects certain entities. Currently TNT, Falling Blocks (sand), and Ender Pearls
  - Which entities are removed are configurable
- Improve tick loop even more
- Improve packet processing
- Improve the performance of getting players by name
- Only autosave chunks that have changed
  - If the chunk has entities in it, it will be saved every 4 passes (save intervals)
- Make the maximum amount of things in a tick configurable
  - Lower values will prevent lag spikes, but will hurt vanilla style gameplay
  - Redstone can be configured to ignore this maximum
- Don't do lighting calculations on the main thread
  - Allows random lighting updates with no performance 
  - Lots of block changes (redstone and building) will have almost no performance penalty
- Improve liquid draining
  - Reduces the amount of physics calculations made
- Load chunks for entities that go through them
  - Configurable
  - Takes priority over "Remove certain entities that go through and unloaded chunk"
- Only do container calculations if the player can use it
- Don't make explosions process dead entities
- Improve calculating which entities are in range of TNT
  - Can significantly improve performance of TNT when there are lots of entities nearby
- Don't calculate flowing blocks if the underlying material has changed
- Add an option to Instantly drain liquids
  - Improves draining performance even more
- Configure the rate at which mobs are spawned from mob spawners
- Improve item movement
- Improve sending chunks to client in places where blocks don't change
  - Can help with places where lots of players are and blocks don't change
- Configure How far away living entities despawn
  - A 'hard' despawn is when an entity is forced to despawn
  - A 'soft' despawn is how far away an entitiy has a chance to despawn  
- Improves ticking lists
  
### Gameplay
- Make undead horses leashable
- Teleport the vehicle and the passenger
- Make arrows pass through invisible players
- Add 1.8 stone recipes
  - Recipe for mossy cobblestone
  - Recipe for smooth brick (3 different ones)
- Fix the tendency of TNT to go in a certain direction
- Make zombies spawn on the outside of the village in zombie sieges
- Allow nerfed mobs (from mob spawners) to swim
- Make random position generator truly random
  - Fixes mobs sticking to one side of a pen and constantly going north west
- Fix TNT doing more damage to entities on one side of it than the other
- Remove invalid mob spawners
- Prevent rail duplication
- Make falling blocks and TNT collide with certain blocks
 - Collides with signs, fences, torches, buttons, levers, and tripwires
- Make buckets stackable
  - Configurable
- Flat Bedrock
- Make end credits optional
- Fix scoreboard prefix and suffix not showing in tab list
- Prevent invalid item ids
  - Can configure certain invalid ids to allow
- Configure what to generate
- Change the speed lava flows at
- Make players take damage at the top of the nether

### Other
- Don't crash the server with invalid tile entities
- Backport 1.8 security fixes
- Fix concurrency issue (hard bug) in multi block change
- Prevent players from spamming interaction packets
  - Prevents malicious players from hurting the server, but may cause issues for players with a high ping
- Add an option to disable critical hits
  - Players may not like this but it will help with hacked clients

### APIs
- Change if a player affects mob spawning
- Add a method to get the server's TPS
- Add a way to load chunks async
- Add a method to get where tnt and falling blocks come from
- Add a view distance API
