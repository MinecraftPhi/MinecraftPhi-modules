# Ensconcer - Shared Utilities for Minecraft Datapacks
Ensconcer is a library of utilities for minecraft datapacks that intends to unify data storage and manipulation in minecraft 1.14+

There are plans for extra optional modules with more functions, as well as a transpiler with direct support for Ensconcer to ease the use of various advanced features.

## Setup
The zip file needs to be placed in the `datapacks` folder of your world. Upon loading the world, or on `/reload`, players will be prompted to complete the setup by clicking on the message every 5 seconds until the setup is complete. This can only be done by operators, and causes the chunk at block (654321, 654321) to be force loaded (chunk 40895, 40895).

## Usage
Ensconcer adds 4 blocks to the world for various uses that are shared between datapacks:
- (654321 0 654321): A jukebox with an item in it
- (654322 0 654321): A command block running a function tag
- (654321 0 654322): A shulker box
- (654322 0 654322): A sign

Some bedrock is also placed directly above these blocks to protect them.  
These blocks must **not** be destroyed by any datapack, at any point, for any reason.  
The rest of the chunk, from y=2 and above, is freely available for any use by datapacks. However, these blocks can not be expected to remain untouched by other datapacks, this area is for temporary storage only.

### Jukebox
The jukebox located at (654321 0 654321) is for data storage. It contains an item with a `tag` tag. All accesses to this data should be in the form:
```
RecordItem.tag.<namespace>...
```
Where `<namespace>` is your namespace being used in your datapack(s). This is done to prevent conflicts between datapacks.  
The `...` can be any NBT path, anything within this is completely under the control of your datapack.

This block is used for storing any data that cannot be stored on the scoreboard, e.g. strings like enchantment ids, or entire NBT compounds like items. However, it is recommended to still use the scoreboard whenever possible, because the scoreboard is more performant.

### Command Block
The command block at (654322 0 654321) is a repeating command block running the function tag `#ensconcer:overworld_tick`  
This function tag can be hooked into by an datapack to run functions after entity processing is completed for the current tick.  
This command block must never be modified.

### Shulker Box
The shulker box at (654321 0 654322) is used for player inventory manipulation. This involves copying the player's inventory to the shulker box, manipulating the data in the shulker box, then using a custom loot table combined with `/drop` to put the items back in the player's inventory.  
Usage of this is described in [Player Inventory Manipulation](https://github.com/MinecraftCommands/ensconcer/wiki/Player-Inventory-Manipulation)

### Sign
The sign at (654322 0 654322) is used for resolving advanced JSON text components to be copied into text components that only allow formatting and text.
Just apply the json text to the sign using whatever method you wish, and then copy the result to another location using
```
data modify ... set from block 654322 0 654322 Text1
```
