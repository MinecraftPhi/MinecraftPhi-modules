scoreboard players set $ensconcer.initiated eglobal 1
tellraw @a {"text":"Datapack setup complete!","color":"dark_aqua"}

# Set up stuff in the chunk
setblock 654321 0 654321 minecraft:jukebox{RecordItem:{id:"minecraft:comparator",Count:1,tag:{}}}
setblock 654322 0 654321 minecraft:repeating_command_block{Command:"function #ensconcer:overworld_tick",auto:1b}
setblock 654321 0 654322 minecraft:shulker_box
setblock 654322 0 654322 minecraft:oak_wall_sign[facing=south]
fill 654320 1 654320 654323 1 654323 minecraft:bedrock

# Notify any datapacks that care
function #ensconcer:initiated
