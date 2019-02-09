# Set up stuff in the chunk
setblock -30000000 0 1600 minecraft:jukebox{RecordItem:{id:"minecraft:comparator",Count:1,tag:{}}}
# Workaround for not being able to replace existing command blocks
setblock -30000000 0 1601 minecraft:stone
execute in overworld run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function #phi.core:overworld_tick",auto:1b}
execute in the_nether run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function #phi.core:nether_tick",auto:1b}
execute in the_end run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function phi.core:internal/end_tick",auto:1b}
setblock -30000000 0 1602 minecraft:shulker_box
setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock
