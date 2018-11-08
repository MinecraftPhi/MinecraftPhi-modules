# Ensconcer - Shared Utilities for Minecraft Datapacks
Ensconcer is a library of utilities for minecraft datapacks that intends to unify data storage and manipulation in minecraft 1.14+

There are plans for extra optional modules with more functions, as well as a transpiler with direct support for Ensconcer to ease the use of various advanced features.

## Setup
The zip file needs to be placed in the `datapacks` folder of your world. Upon loading the world, or on `/reload`, players will be prompted to complete the setup by clicking on the message every 5 seconds until the setup is complete. This can only be done by operators, and causes the chunk at block (-30000000, 1600) to be force loaded (chunk -1875000, 100).

## Usage
Ensconcer adds 4 blocks to the world for various uses that are shared between datapacks:
- (-30000000 0 1600): A jukebox with an item in it
- (-30000000 0 1601): A command block running a function tag
- (-30000000 0 1602): A shulker box
- (-30000000 0 1603): A sign

Some bedrock is also placed directly above these blocks to protect them.  
These blocks must **not** be destroyed by any datapack, at any point, for any reason.  
The rest of the chunk, from y=2 and above, is freely available for any use by datapacks. However, these blocks can not be expected to remain untouched by other datapacks, this area is for temporary storage only.

More details on what these are used for, and what modules are currently available, see the [Ensconcer wiki](https://github.com/MinecraftCommands/ensconcer/wiki)