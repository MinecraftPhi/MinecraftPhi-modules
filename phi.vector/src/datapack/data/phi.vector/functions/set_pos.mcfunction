execute if entity @s[type=minecraft:player] run function phi.vector:internal/set_pos/player
execute if entity @s[type=!minecraft:player] run data modify entity @s Pos set from block -30000000 0 1600 RecordItem.tag.phi.vector.pos