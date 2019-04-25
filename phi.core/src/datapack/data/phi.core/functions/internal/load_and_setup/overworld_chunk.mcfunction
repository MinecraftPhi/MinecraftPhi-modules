execute in overworld store success score $phi.core.chunk_loaded phitemp run forceload query -30000000 1600

# If still not loaded, prompt player and schedule self again 
execute if score $phi.core.chunk_loaded phitemp matches 0 run tellraw @a {"text":"The Phi chunk in the overworld isn't loaded, click here to load it!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute in overworld run forceload add -30000000 1600"}}
execute if score $phi.core.chunk_loaded phitemp matches 0 run schedule function phi.core:internal/load_and_setup/overworld_chunk 5s

# Chunk has been loaded:
execute if score $phi.core.chunk_loaded phitemp matches 1 in overworld run function phi.core:internal/create_burrow
execute if score $phi.core.chunk_loaded phitemp matches 1 run function phi.core:internal/load_and_setup/nether_chunk