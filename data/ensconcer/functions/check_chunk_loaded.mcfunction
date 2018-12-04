# Compare block to itself to check if chunk loaded
execute store success score $ensconcer.chunk_loaded temp if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all 

# If still not loaded, prompt player and schedule self again 
execute if score $ensconcer.chunk_loaded temp matches 0 run tellraw @a {"text":"Almost done, click here to complete datapack setup!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute at @e[type=area_effect_cloud,tag=ensconcer.ld] run forceload add -30000000 1600"}}
execute if score $ensconcer.chunk_loaded temp matches 0 run schedule function ensconcer:check_chunk_loaded 5s

summon area_effect_cloud ~ ~ ~ {Tags:["ensconcer.ld","ensconcer.ld.overworld"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["ensconcer.ld","ensconcer.ld.nether"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["ensconcer.ld","ensconcer.ld.end"],Duration:100}
execute in the_nether run tp @e[type=area_effect_cloud,tag=ensconcer.ld.nether,limit=1] ~ ~ ~
execute in the_end run tp @e[type=area_effect_cloud,tag=ensconcer.ld.end,limit=1] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=ensconcer.ld] at @s run spreadplayers ~ ~ 0 1 false @s

# Chunk has been loaded:
execute if score $ensconcer.chunk_loaded temp matches 1 as @e[type=area_effect_cloud,tag=ensconcer.ld] at @s run function ensconcer:create_burrow
execute if score $ensconcer.chunk_loaded temp matches 1 run function ensconcer:setup_complete
