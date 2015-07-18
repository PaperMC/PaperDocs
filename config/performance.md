Paper Spigot Performance Options
================================
The following options can be found in paper.yml

## Per World Settings
These settings are per world:

world name: (put the world name you want to configure this for here) 
  - 'tnt-entity-height-nerf': Drop falling blocks and tnt that are too high
    - See [Features](../index.md#Features) for more info
  - 'remove-unloaded': If we should remove entities that enter an unloaded chunk
    - 'enderpearls' Remove ender pearls that go through and unloaded chunk
    - 'tnt-entities': Remove TNT that goes through and unloaded chunk
    - 'falling-blocks': Remove falling blocks that go through and unloaded chunk
    - See [Features](../index.md#Features) for more info
  - 'tick-next-tick-list-cap': The maximum amount of things run in a tick
    - See [Features](../index.md#Features) for more info
  - 'tick-next-tick-list-cap': If redstone ignores tick-next-tick-list-cap
    - See above
  - 'use-async-lighting': Don't do lighting calculations on the main thread
    - See [Features](../index.md#Features) for more info
  - 'load-chunks' : Load chunks for entities that go through them
    - 'enderpearls': Load chunks for enderpearls that go through them
	- 'tnt-entities': Load chunks for TNT that goes through them
	- 'falling-blocks': Load chunks for falling blocks that go through them
	- See [Features](../index.md#Features) for more info
  - 'optimize-explosions': Improve calculating which entities are in range of TNT
   	- See [Features](../index.md#Features) for more info
  - 'fast-drain': Instantly drain liquids
    - 'lava': Instantly drain lava
    - 'water': Instantly drain water
    - See [Features](../index.md#Features) for more info
  - 'mob-spawner-tick-rate': How often mobs are spawned from mob spawners
  - 'cache-chunk-maps': Improve sending chunks to client in places where blocks don't change
    - See [Features](../index.md#Features) for more info
- 'despawn-ranges': How far away living entities despawn
  - 'soft': Soft despawn range
  - 'hard': Hard despawn range
    - See [Features](../index.md#Features) for more info
- 'keep-spawn-loaded': Weather to keep spawn loaded in memory
- 'cache-chunk-maps': Improve sending chunks to client in places where blocks don't change
  - See [Features](../index.md#Features) for more info
