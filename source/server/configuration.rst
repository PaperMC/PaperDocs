=============
Configuration
=============

This page details the various configuration settings exposed by Paper.

.. contents::
   :depth: 1
   :local:

If you want information on settings in spigot.yml and bukkit.yml you should see
their respective documentation pages.

* `Bukkit Configuration (bukkit.yml) <https://bukkit.gamepedia.com/Bukkit.yml>`_

* `Spigot Configuration (spigot.yml) <https://www.spigotmc.org/wiki/spigot-configuration/>`_

.. warning::
    Configuration values change frequently at times. It is possible for the
    information here to be incomplete. If you cannot find what you're looking for
    or think something may be wrong, :doc:`../about/contact`

    Last updated August 23rd, 2020 for MC 1.16.1, Paper build #138

Global Settings
===============

Global settings affect all worlds on the server as well as the core server
functionality itself.

verbose
~~~~~~~
* **default**: false
* **description**: Sets whether the server should dump all configuration values
  to the server log on startup.

allow-perm-block-break-exploits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether unbreakable blocks can be broken with vanilla exploits.

load-permissions-yml-before-plugins
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Loads bukkit's permission.yml file before plugins, allowing
  them to check permissions immediately on enable.

bungee-online-mode
~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Instructs the server how to handle player UUIDs and data
  when behind bungee. Set to match your proxy's online-mode setting.

console-has-all-permissions
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether or not console command senders have all permissions

region-file-cache-size
~~~~~~~~~~~~~~~~~~~~~~
* **default**: 256
* **description**: Sets the maximum size of the region file cache.

incoming-packet-spam-threshold
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 300
* **description**: Sets the threshold at which the server will consider
  incoming packets as spam and ignore them.

suggest-player-names-when-null-tab-completions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Instructs the server to return a list of players when
  tab-completing if the plugin has no tab completions of its own.

use-alternative-luck-formula
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Use alternative luck formula by Aikar, allowing luck to be
  applied to items that have no quality defined. Makes major changes to fishing
  formulas.

save-player-data
~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Sets whether the server should save player data, such as
  inventories, experience, and advancements.

enable-player-collisions
~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Sets whether the server should allow players to collide with
  one another.
* **warning**: This setting can be broken by plugins interacting with the
  scoreboard, double check plugins when troubleshooting this value.

save-empty-scoreboard-teams
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Some scoreboard plugins leave hundreds of empty scoreboard
  teams around, dramatically slowing down login times. This sets whether the
  server should remove those empty teams automatically.

velocity-support
~~~~~~~~~~~~~~~~
* enabled
    - **default**: false
    - **description**: Set this to true if this server is behind a `Velocity
      <https://www.velocitypowered.com/>`_ proxy.

* online-mode
    - **default**: true
    - **description**: Instructs the server how to handle player UUIDs and data
      when behind velocity. Set to match your proxy's online-mode setting.

* secret
    - **default**: ' ' (empty string)
    - **description**: The secret string that is shared by your Velocity proxy
      and this server. This needs to match your proxy's ``forwarding-secret``
      setting.

watchdog
~~~~~~~~
* early-warning-every
    - **default**: 5000
    - **description**: The interval in milliseconds between printed thread
      dumps while the server is hanging.

* early-warning-delay
    - **default**: 10000
    - **description**: The number of milliseconds before the watchdog thread
      starts printing thread dumps after the server starts hanging.

spam-limiter
~~~~~~~~~~~~
* tab-spam-increment
    - **default**: 1
    - **description**: The number that the internal tab spam counter increases
      by when a player presses tab in the chat window.

* tab-spam-limit
    - **default**: 500
    - **description**: The number that the internal tab spam counter can reach
      until the server kicks the player for spam.

book-size
~~~~~~~~~
* page-max
    - **default**: 2560
    - **description**: The max number of bytes a single page in a book can
      contribute to the allowed byte total for a book.

* total-multiplier
    - **default**: 0.98
    - **description**: Each page has this multiple of bytes from the last page
      as it's contribution to the allowed byte total for a book (with the first
      page being having a multiplier of 1.0).

unsupported-settings
~~~~~~~~~~~~~~~~~~~~
* allow-piston-duplication
  - **default**: false
  - **description**: If set to true, will allow duplication of TNT,
        carpets and rails. Introduced in build #371

async-chunks
~~~~~~~~~~~~
* enabled
    - **default**: true
    - **description**: Sets whether the server should load and save chunks
      asynchronously, improving performance.

* load-threads
    - **default**: -1
    - **description**: The number of threads the server should use for world
      saving and loading. This is set to (number of processors - 1) by default.

messages
~~~~~~~~
* no-permission
        - **default**: '&cI''m sorry, but you do not have permission to perform
          this command. Please contact the server administrators if you
          believe that this is in error.'
        - **description**: The message the server sends to requestors with
          insufficient permissions.

* kick
    - authentication-servers-down
        - **default**: '' (empty string)
        - **note**: The default value instructs the server to send the vanilla
          translatable kick message.
        - **description**: Message to kick a player with when they are
          disconnected because the Mojang Studios authentication servers are down.

    - connection-throttle
        - **default**: Connection throttled! Please wait before reconnecting.
        - **description**: Message to use when kicking a player when their
          connection is throttled.

    - flying-player
        - **default**: Flying is not enabled on this server
        - **description**: Message to use when kicking a player for flying.

    - flying-vehicle
        - **default**: Flying is not enabled on this server
        - **description**: Message to use when kicking a player's vehicle
          for flying.

timings
~~~~~~~
* enabled
    - **default**: true
    - **description**: Controls the global enable state of the Timings
      platform.

* verbose
    - **default**: true
    - **description**: Instructs Timings to provide more specific information
      in its reports. For example, specific entity types causing lag rather
      than just "entities".

* server-name-privacy
    - **default**: false
    - **description**: Instructs Timings to hide server name information in
      reports.

* hidden-config-entries
    - **default**: { database, settings.bungeecord-addresses }
    - **description**: Configuration entries to hide in Timings reports.

* history-interval
    - **default**: 300
    - **description**: The interval in seconds between individual points in the
      Timings report.

* history-length
    - **default**: 3600
    - **description**: The total amount of data to keep for a single report.
    - **warning**: This value is validated server side, massive reports will be
      rejected by the report site.

* server-name
    - **default**: Unknown Server
    - **description**: Instructs timings on what to put in for the server name.

World Settings
==============

World settings are configured on a per-world basis. The child-node *default*
is used for all worlds that do not have their own specific settings.

delay-chunk-unloads-by
~~~~~~~~~~~~~~~~~~~~~~
* **default**: 10s
* **description**: Delays chunk unloads by the specified time

disable-teleportation-suffocation-check
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Disables the suffocation check the server performs before
  teleporting a player.
* **note**: While useful to keep your players out of walls, leaving this
  feature on may allow players to teleport through solid materials by logging
  out in specific locations.

optimize-explosions
~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to cache entity lookups during an
  explosion, rather than recalculating throughout the process. This
  speeds up explosions significantly.

baby-zombie-movement-modifier
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 0.5
* **description**: Modifies the speed that baby zombies move at, where 0.5 is
  50% faster than the mob base speed, and -0.4 would be 40% slower.

fixed-chunk-inhabited-time
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: -1
* **description**: If 0 or greater, set the chunk inhabited time to a fixed
  number.
* **note**: The timer is increased when chunks are kept loaded because of
  player activity.

use-vanilla-world-scoreboard-name-coloring
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to use the vanilla scoreboard for
  player nickname coloring.
* **note**: Useful when playing on adventure maps made for the vanilla server
  and client.

remove-corrupt-tile-entities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to automatically remove tile entities
  it detects as broken and cannot fix.

experience-merge-max-value
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: -1
* **description**: Instructs the server put a maximum value on experience orbs,
  preventing them all from merging down into 1 single orb.
* **note**: The default value instructs the server to use no max value,
  allowing them to merge down into a single orb. This is especially noticeable
  when defeating boss monsters.

prevent-moving-into-unloaded-chunks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether the server will prevent players from moving
  into unloaded chunks or not.

max-auto-save-chunks-per-tick
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 24
* **description**: The maximum number of chunks the auto-save system will save
  in a single tick.

count-all-mobs-for-spawning
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Determines whether spawner mobs and other misc mobs are
  counted towards the global mob limit.

per-player-mob-spawns
~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Determines whether the mob limit (in bukkit.yml) is counted
  per-player or for the entire server.

falling-block-height-nerf
~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 0
* **note**: Values less than 1, will disable this feature.
* **description**: The height at which falling blocks will be removed from
  the server.

tnt-entity-height-nerf
~~~~~~~~~~~~~~~~~~~~~~
* **default**: 0
* **note**: Values less than 1, will disable this feature.
* **description**: The height at which Primed TNT entities will be removed from
  the server.

filter-nbt-data-from-spawn-eggs-and-related
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Instructs the server to remove certain NBT data from
  spawn-eggs, falling-blocks, and other often abused items in creative mode.
* **note**: Some adventure maps may require this be turned off to function
  correctly, but we do not recommend turning it off on a public server.

max-entity-collisions
~~~~~~~~~~~~~~~~~~~~~
* **default**: 8
* **description**: Instructs the server to stop processing collisions after
  this value is reached.

disable-creeper-lingering-effect
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Disables creepers randomly leaving behind a lingering area
  effect cloud.

duplicate-uuid-resolver
~~~~~~~~~~~~~~~~~~~~~~~
* **default**: saferegen
* **description**: Specifies the method the server uses to resolve entities with
  duplicate UUIDs. This can be one of the following values:

    - **saferegen**: Regenerate a UUID for the entity, or delete it if they are
      close.
    - **delete**: Delete the entity.
    - **silent**: Does nothing, not printing logs.
    - **warn**: Does nothing, printing logs.

duplicate-uuid-saferegen-delete-range
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 32
* **description**: If multiple entities with duplicate UUIDs are within this
  many blocks, saferegen will delete all but 1 of them.

phantoms-do-no-spawn-on-creative-players
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Disables spawning of phantoms on players in creative mode

phantoms-only-attack-insomniacs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Prevents phantoms from attacking players who have slept

keep-spawn-loaded
~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Instructs the server to keep the spawn chunks loaded at all
  times.

water-over-lava-flow-speed
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 5
* **description**: Sets the speed at which water flows while over lava.

grass-spread-tick-rate
~~~~~~~~~~~~~~~~~~~~~~
* **default**: 1
* **description**: Sets the delay, in ticks, at which the server attempts to
  spread grass. Higher values will result in slower spread.

bed-search-radius
~~~~~~~~~~~~~~~~~
* **default**: 1
* **description**: The distance the server checks for a safe place to
  respawn a player near their bed. Increasing this value gives players a better
  chance to respawn at their bed should it became obstructed.

nether-ceiling-void-damage-height
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 0
* **description**: Sets the level above which players in the nether will take void damage.
  This is a vanilla-friendly way to restrict players using the nether ceiling as buildable
  area. Setting to 0 disables this feature.

allow-non-player-entities-on-scoreboards
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to treat non-player entities as if they
  are never on a scoreboard.
* **note**: Enabling this value may increase the amount of time the server
  spends calculating entity collisions.

portal-search-radius
~~~~~~~~~~~~~~~~~~~~
* **default**: 128
* **description**: The maximum range the server will use to look for an
  existing nether portal. If it can't find one in that range, it will generate
  a new one.

portal-create-radius
~~~~~~~~~~~~~~~~~~~~
* **default**: 16
* **description**: The maximum range the server will try to create a portal around
  when generating a new portal

container-update-tick-rate
~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 1
* **description**: The rate, in ticks, at which the server updates containers
  and inventories.

parrots-are-unaffected-by-player-movement
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Makes parrots "sticky" so they do not fall off a player's
  shoulder when they move. Use crouch to shake them off.

disable-explosion-knockback
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to completely block any knockback that
  occurs as a result of an explosion.

disable-thunder
~~~~~~~~~~~~~~~
* **default**: false
* **description**: Disables thunderstorms.

skeleton-horse-thunder-spawn-chance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 0.01
* **description**: Sets the chance that a "Skeleton Trap" (4 skeleton horsemen)
  will spawn in a thunderstorm.

disable-ice-and-snow
~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Disables ice and snow formation.

keep-spawn-loaded-range
~~~~~~~~~~~~~~~~~~~~~~~
* **default**: 10
* **description**: The range in chunks around spawn to keep loaded.

armor-stands-do-collision-entity-lookups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Instructs armor stand entities to do entity collision
  checks.

enable-treasure-maps
~~~~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Allows villagers to trade treasure maps.

treasure-maps-return-already-discovered
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to target the first treasure location
  found, rather than the first undiscovered one. Vanilla mechanics normally
  find the first undiscovered location, which may lead to structures that were
  not fully looted, and can also fail with a world border set. Enabling this
  will make the map simply find the closest target structure, regardless if it
  has been loaded or not already.

prevent-tnt-from-moving-in-water
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to keep Primed TNT entities from moving
  in flowing water.

iron-golems-can-spawn-in-air
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether iron golems can spawn in the air. Iron farms may break
  depending on this setting

armor-stands-tick
~~~~~~~~~~~~~~~~~
* **default**: true
* **description**: Disable to prevent armor stands from ticking. Can improve
  performance with many armor stands.

non-player-arrow-despawn-rate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: -1
* **note**: The default value instructs the server to use the same default
  arrow despawn rate from spigot.yml that is used for all arrows.
* **description**: The rate, in ticks, at which arrows shot from non-player
  entities are despawned.

creative-arrow-despawn-rate
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: -1
* **description**: The rate, in ticks, at which arrows shot from players in
  creative mode are despawned.

spawner-nerfed-mobs-should-jump
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Determines if spawner nerfed mobs should attempt to float
  (jump) in water.

entities-target-with-follow-range
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Sets whether the server should use follow range when
  targeting entities

zombie-villager-infection-chance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: -1.0
* **description**: Sets the change for villager conversion to zombie villager
  Set to -1.0 for default behavior based on game difficulty
  Set to 0.0 to always have villagers die when killed by zombies
  Set to 1.0 to always convert villagers to zombie villagers

all-chunks-are-slime-chunks
~~~~~~~~~~~~~~~~~~~~~~~~~~~
* **default**: false
* **description**: Instructs the server to treat all chunks like slime chunks,
  allowing them to spawn in any chunk.
* **note**: This may actually decrease your chances of running into a Slime as
  they now have a much larger potential spawn area.

mob-spawner-tick-rate
~~~~~~~~~~~~~~~~~~~~~
* **default**: 1
* **description**: How often mob spawners should tick to calculate available
  spawn areas and spawn new entities into the world.

auto-save-interval
~~~~~~~~~~~~~~~~~~
* **default**: -1
* **note**: Default value instructs the world to use Bukkit's default.
* **description**: Instructs this world to use a specific value for auto-save
  instead of bukkit's global value.

game-mechanics
~~~~~~~~~~~~~~
* scan-for-legacy-ender-dragon
    - **default**: true
    - **description**: Determines whether the server searches for the ender
      dragon when loading older worlds.

* disable-pillager-patrols
    - **default**: false
    - **description**: Disables Pillager patrols and associated AI.

* nerf-pigmen-from-nether-portals
    - **default**: false
    - **description**: Removes AI from pigmen spawned via nether portals

* disable-chest-cat-detection
    - **default**: false
    - **description**: Allows you to open chests even if they have a cat
      sitting on top of them.

* disable-end-credits
    - **default**: false
    - **description**: Instructs the server to never send the end game credits
      when leaving the end.

* disable-player-crits
    - **default**: false
    - **description**: Instructs the server to disable critical hits in PvP,
      instead treating them as normal hits.

* disable-sprint-interruption-on-attack
    - **default**: false
    - **description**: Determines if the server will interrupt a sprinting
      player if they are attacked.

* shield-blocking-delay
    - **default**: 5
    - **description**: The number of ticks between a player activating their
      shield and it actually blocking damage.

* disable-unloaded-chunk-enderpearl-exploit:
    - **default**: true
    - **description**: Prevent enderpearls from storing the thrower when in an
      unloaded chunk.

* disable-relative-projectile-velocity
    - **default**: false
    - **description**: Instructs the server to ignore shooter velocity when
      calculating the velocity of a fired arrow.

pillager-patrols
~~~~~~~~~~~~~~~~
    - spawn-chance
        - **default**: 0.2
        - **description**: Modify the spawn changes for patrols
    - spawn-delay
        - per-player
            - **default**: false
            - **description**: Makes spawn-delay per player
        - ticks
            - **default**: 1200
            - **description**: Delay in ticks between spawn chance
    - start
        - per-player
            - **default**: false
            - **description**: Makes days per player
        - days
            - **default**: 5
            - **description**: Days between raid spawns

max-growth-height
~~~~~~~~~~~~~~~~~
* cactus
    - **default**: 3
    - **description**: Maximum height cactus blocks will naturally grow to.

* reeds
    - **default**: 3
    - **description**: Maximum height reed blocks will naturally grow to.

fishing-time-range
~~~~~~~~~~~~~~~~~~
* MinimumTicks
    - **default**: 100
    - **description**: The minimum number of RNG ticks needed to catch a fish.

* MaximumTicks
    - **default**: 600
    - **description**: The maximum number of RNG ticks before catching a fish.

despawn-ranges
~~~~~~~~~~~~~~
* soft
    - **default**: 32
    - **description**: The number of blocks away from a player in which
      entities will be randomly selected to be despawned.

* hard
    - **default** 128
    - **description**: The number of blocks away from a player in which
      entities will be forcibly despawned.

frosted-ice
~~~~~~~~~~~
* enabled
    - **default**: true
    - **description**: Instructs the server to enable (and tick) frosted
      ice blocks.

* delay
    - min
        - **default**: 20
        - **description**: minimum RNG value to apply frosted-ice effects at.
    - max
        - **default**: 40
        - **description**: maximum RNG value to apply frosted-ice effects at.

lootables
~~~~~~~~~
* auto-replenish
    - **default**: false
    - **description**: Instructs the server to automatically replenish
      lootable containers.
    - **note**: This feature is useful for long-term worlds in which players
      are not expected to constantly explore to generate new chunks.

* restrict-player-reloot
    - **default**: true
    - **description**: Prevents the same players from coming back and
      re-looting the same containers over and over.

* reset-seed-on-fill
    - **default**: true
    - **description**: Resets the loot seed each time the lootable is refilled.
      Effectively randomizing the new loot items on each refill.

* max-refills
    - **default**: -1
    - **description**: Sets the maximum number of times a lootable may
      be refilled.
    - **note**: The default value will allow a lootable to refilled an infinite
      number of times.

* refresh-min
    - **default**: 12h
    - **description**: The minimum amount of time that must pass before a
      lootable will be eligible to be refilled.
    - **note**: This field uses time-based values. 12s = 12 seconds,
      3h = 3 hours, 4d = 4 days.

* refresh-max
    - **default**: 2d
    - **description**: The maximum amount of time that can pass before a
      lootable is refilled.
    - **note**: This field uses time-based values. 12s = 12 seconds,
      3h = 3 hours, 4d = 4 days.

alt-item-despawn-rate
~~~~~~~~~~~~~~~~~~~~~
* enabled
    - **default**: false
    - **description**: Determines if items will have different despawn rates.

* items
    - **default**: { COBBLESTONE: 300 } (a list of mappings)
    - **description**: Determines how long each respective item despawns in
      ticks. You can use item names from `this enum <https://papermc.io/javadocs/paper/1.14/org/bukkit/Material.html>`.

hopper
~~~~~~
* cooldown-when-full
    - **default**: true
    - **description**: Instructs the server to apply a short cooldown when the
      hopper is full, instead of constantly trying to pull new items.

* disable-move-event
    - **default**: false
    - **description**: Completely disables the *InventoryMoveItemEvent* for
      hoppers. Dramatically improves hopper performance but will break
      protection plugins and any others that depend on this event.

lightning-strike-distance-limit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* sound
    - **default**: -1
    - **description**: The distance that players will hear lightning from.

* impact-sound
    - **default**: -1
    - **description**: The distance that players will hear a lightning impact
      from.

* flash
    - **default**: -1
    - **description**: The distance that players will see lightning flashes in
      the sky.

anti-xray
~~~~~~~~~
* enabled
    - **default**: false
    - **description**: Controls the on/off state for the Anti-Xray system.

* engine-mode
    - **default**: 1
    - **description**: Sets the Anti-Xray engine mode. Where 1 is to replace
      hidden blocks with stone and 2 is to replace all blocks with random block
      data.

* chunk-edge-mode
    - **default**: 3
    - **description**: Sets how the engine handles chunk edges. Where 1 is not
      to obfuscate the edges of chunks with unloaded neighbors, 2 is to not send
      the chunk until its neighbors are present (similar to a x-1 view distance),
      and 3 is to load the neighbor so it can properly obfuscate the current edge
      (similar to an x+1 view distance).

* max-chunk-section-index
    - **default**: 3
    - **description**: Controls to what Y value (height) the engine should
      operate to, expressed in chunk sections.
    - **note**: To determine the total height, use this formula:
      ($index + 1) * 16. Therefore, the default value of 3 will result in the
      engine functioning up to Y: 64.

* update-radius
    - **default**: 2
    - **description**: Controls the distance in blocks from air or water that
      hidden-blocks are hidden by the anti-xray engine.

* hidden-blocks
   - **default**: { gold_ore, iron_ore, coal_ore, lapis_ore, mossy_cobblestone,
     obsidian, chest, diamond_ore, redstone_ore, clay, emerald_ore, ender_chest }
   - **description**: List of blocks to be hidden in engine mode 1.
   - **note**: This list is using Mojang Studios server names *not* bukkit names.

* replacement-blocks:
    - **default**: { stone, oak_planks }
    - **description**: List of blocks that should be replaced by hidden-blocks
      in engine mode 2.
    - **note**: This list is using Mojang Studios server names *not* bukkit names.

viewdistances
~~~~~~~~~~~~~
* no-tick-view-distance
  - **default**: -1
  - **description**: Sets the no-tick view distance

squid-spawn-height
~~~~~~~~~~~~~~~~~~
* maximum
    - **default**: 0.0
    - **description**: The maximum height at which squids will spawn.
    - **note**: The default value defers to Minecraft's default setting,
      which as of 1.12 is the sea-level of the world (usually Y: 64).

generator-settings
~~~~~~~~~~~~~~~~~~
* flat-bedrock
    - **default**: false
    - **description**: Instructs the server to generate bedrock as a single flat layer.
