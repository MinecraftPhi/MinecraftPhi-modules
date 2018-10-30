# Compare block to itself to check if chunk loaded
execute store result score $ensconcer.chunk_loaded workspace if blocks 654321 0 654321 654321 0 654321 654321 0 654321 all 

# If still not loaded, prompt player and schedule self again 
execute if score $ensconcer.chunk_loaded workspace matches 0 run tellraw @a {"text":"Almost done, click here to complete datapack setup!","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/forceload add 654321 654321"}}
execute if score $ensconcer.chunk_loaded workspace matches 0 run schedule function ensconcer:check_chunk_loaded 5s

# Chunk has been loaded:
execute if score $ensconcer.chunk_loaded workspace matches 1 run function ensconcer:create_burrow