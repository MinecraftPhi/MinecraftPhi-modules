# Compare block to itself to check if chunk loaded
# chunk_loaded = loaded in overworld && loaded in the nether && loaded in the end
execute store success score $phi.core.chunk_loaded temp if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all
# this shortcutting makes this an AND, removing this shortcutting causes it to ignore the earlier checks
execute if score $phi.core.chunk_loaded temp matches 1 in the_nether store success score $phi.core.chunk_loaded temp if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all
execute if score $phi.core.chunk_loaded temp matches 1 in the_end store success score $phi.core.chunk_loaded temp if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all

# If still not loaded, prompt player and schedule self again 
execute if score $phi.core.chunk_loaded temp matches 0 run tellraw @a {"text":"Almost done, click here to complete datapack setup!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute at @e[type=area_effect_cloud,tag=phi.core.ld] run forceload add -30000000 1600"}}
execute if score $phi.core.chunk_loaded temp matches 0 run schedule function phi.core:internal/load_and_setup 5s

summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.overworld"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.nether"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.end"],Duration:100}
execute in the_nether run tp @e[type=area_effect_cloud,tag=phi.core.ld.nether,limit=1] ~ ~ ~
execute in the_end run tp @e[type=area_effect_cloud,tag=phi.core.ld.end,limit=1] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=phi.core.ld] at @s run spreadplayers ~ ~ 0 1 false @s

# Chunk has been loaded:
execute if score $phi.core.chunk_loaded temp matches 1 at @e[type=area_effect_cloud,tag=phi.core.ld] run function phi.core:internal/create_burrow
execute if score $phi.core.chunk_loaded temp matches 1 run function phi.core:internal/setup_complete
