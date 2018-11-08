# Compare block to itself to check if chunk loaded
execute store result score $ensconcer.chunk_loaded temp if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all 

# If still not loaded, prompt player and schedule self again 
execute if score $ensconcer.chunk_loaded temp matches 0 run tellraw @a {"text":"Almost done, click here to complete datapack setup!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/forceload add -30000000 1600"}}
execute if score $ensconcer.chunk_loaded temp matches 0 run schedule function ensconcer:check_chunk_loaded 5s

# Chunk has been loaded:
execute if score $ensconcer.chunk_loaded temp matches 1 run function ensconcer:create_burrow