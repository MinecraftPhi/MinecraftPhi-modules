# chunk_loaded = loaded in overworld && loaded in the nether && loaded in the end
execute store success score $phi.core.chunk_loaded phitemp run forceload query -30000000 1600
# this shortcutting makes this an AND, removing this shortcutting causes it to ignore the earlier checks
execute if score $phi.core.chunk_loaded phitemp matches 1 in the_nether store success score $phi.core.chunk_loaded phitemp run forceload query -30000000 1600
execute if score $phi.core.chunk_loaded phitemp matches 1 in the_end store success score $phi.core.chunk_loaded phitemp run forceload query -30000000 1600

# If still not loaded, prompt player and schedule self again 
execute if score $phi.core.chunk_loaded phitemp matches 0 run tellraw @a {"text":"It seems the chunks failed to stay loaded, click here to load the chunks again","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute at @e[type=area_effect_cloud,tag=phi.core.ld] run forceload add -30000000 1600"}}
execute if score $phi.core.chunk_loaded phitemp matches 0 run schedule function phi.core:internal/ensure_loaded 5s

summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.overworld"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.nether"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["phi.core.ld","phi.core.ld.end"],Duration:100}
execute in the_nether run tp @e[type=area_effect_cloud,tag=phi.core.ld.nether,limit=1] ~ ~ ~
execute in the_end run tp @e[type=area_effect_cloud,tag=phi.core.ld.end,limit=1] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=phi.core.ld] at @s run spreadplayers ~ ~ 0 1 false @s

execute if score $phi.core.chunk_loaded phitemp matches 1 run kill @e[type=area_effect_cloud,tag=phi.core.ld]