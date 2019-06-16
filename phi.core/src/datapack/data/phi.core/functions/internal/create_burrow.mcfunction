# Set up stuff in the chunk
# Only replace block if it doesn't already exist, to prevent data loss
execute unless block -30000000 0 1600 minecraft:jukebox run setblock -30000000 0 1600 minecraft:jukebox{RecordItem:{id:"minecraft:comparator",Count:1,tag:{}}}
# Set NBT for block in case the data dissapeared
execute unless data block -30000000 0 1600 RecordItem.tag run data modify block -30000000 0 1600 RecordItem set value {id:"minecraft:comparator",Count:1,tag:{}}
# Workaround for bug causing us to not being able to replace existing command blocks
setblock -30000000 0 1601 minecraft:stone
execute in overworld run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function #phi.core:overworld_bp_tick",auto:1b}
execute in the_nether run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function #phi.core:the_nether_bp_tick",auto:1b}
execute in the_end run setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function #phi.core:the_end_bp_tick",auto:1b}
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box
execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock