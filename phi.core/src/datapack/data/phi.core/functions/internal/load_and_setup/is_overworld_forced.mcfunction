execute in overworld store success score $phi.core.chunk_forced phitemp run forceload query -30000000 1600

# If still not force loaded, prompt player and schedule self again 
execute if score $phi.core.chunk_forced phitemp matches 0 run scoreboard players set $phi.core.newly_forced phiglobal 1
execute if score $phi.core.chunk_forced phitemp matches 0 run tellraw @a {"text":"The Phi chunk in the overworld isn't force loaded, click here to force load it!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute in overworld run forceload add -30000000 1600"}}
execute if score $phi.core.chunk_forced phitemp matches 0 run schedule function phi.core:internal/load_and_setup/is_overworld_forced 5s

# Chunk has been force loaded:
execute if score $phi.core.chunk_forced phitemp matches 1 run function phi.core:internal/load_and_setup/is_overworld_loaded
execute if score $phi.core.chunk_forced phitemp matches 1 run function phi.core:internal/load_and_setup/is_nether_forced