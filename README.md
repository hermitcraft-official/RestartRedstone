# RestartRedstone Datapack

A minecraft datapack that lets you place "dormant" redstone blocks that get activated once for a few ticks on command.

Anyone can place those blocks, but only OPs can trigger them.

### Minecraft 1.20 and above

**To use this datapack, head over to [Releases](https://github.com/hermitcraft-official/RestartRedstone/releases), find the one appropriate for your game version (or alternatively click on the green "Code" button in the top right and choose "Download Zip" for the latest code updates) and _unzip_ the zip file into your worlds datapacks folder.**

The folder structure should then look like thism where `XXX` is either the release you downloaded (e.g. `1.2`) or `main`:

```
datapacks
└ RestartRedstone-XXX
  ├ data
  ├ pack.mcmeta
  └ etc.
```

## How to use

### Create

1. Stand on the block you want to turn into a dormant redstone block.
2. run `/trigger restart_redstone` in chat. The block below you will be turned into a dormant redstone block.

The dormant redstone block cannot be broken, moved or destroyed by explosions.

### Remove

1. Stand on the dormant block you want to remove.
2. Run `/trigger restart_redstone` in chat. The block below you will be removed.

### Trigger the redstone

To "wake up" all loaded dormant redstone blocks, run `/function restart_redstone:run`.  
This will activate every loaded dormant redstone block, one by one, for 1 second with 1 second break between them.  

> ⚠ **After the system has been triggered, it can't be triggered again until the server was restarted or the `/reload` command was used.**

_On Hermitcraft this system is supposed to do some resets before a server shutdown, so this command is scheduled to run a few minutes before the server shutdown command is scheduled._

## Modification

Various things about this datapack can be modified fairly easily if you know where to look.

### Change timing

To change the timing of the redstone blocks, check the functions `run` and `run_one` in line 7 and line 5 respectively. Change the delay of the `schedule` command to your liking. The delay in `run` defines when the next block is scheduled and the delay in `run_one` defines how long it stays on.  

> **⚠ Be aware that the delay in `run_one` needs to be less than the delay in `run`, as the system isn't made to support overlapping triggers!**

### Change appearance

By default the dormant redstone block looks like a normal redstone block. However, it uses a redstone block with a `CustomModelData` NBT tag of 1, so through a resource pack you can turn that into anything you want. Alternatively you can go into the `setup` function and modify the summon command to display a different block / item through the `item_display` entity.

### Debug Outputs

The datapack outputs some debug messages for players that have the `admin` tag.

### Allow for multiple runs without server restart

While it was not intended to be a global redstoneclock-like mechanism, it can well be used as one. To re-enable the trigger even without a server reload (or the potentially laggy `/reload` command), use this command:

```mcfunction
scoreboard players set #hasRun restart_redstone 0
```
