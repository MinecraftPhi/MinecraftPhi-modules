scoreboard players set $ensconcer.initiated eglobal 1
tellraw @a {"text":"Datapack setup complete!","color":"dark_aqua"}

# Set up stuff in the chunk
setblock -30000000 0 1600 minecraft:jukebox{RecordItem:{id:"minecraft:comparator",Count:1,tag:{}}}
setblock -30000000 0 1601 minecraft:repeating_command_block[facing=north]{Command:"function ensconcer:after_entity_processing",auto:1b}
setblock -30000000 0 1602 minecraft:shulker_box
setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock

# Notify any datapacks that care
function #ensconcer:initiated
