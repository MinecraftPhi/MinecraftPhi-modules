execute in the_end store success score $phi.core.end_loaded phiglobal if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all
scoreboard players operation $phi.core.loaded_chunks phiglobal += $phi.core.end_loaded phiglobal
execute if score $phi.core.end_loaded phiglobal matches 1 in the_end run function phi.core:internal/create_burrow
execute if score $phi.core.end_loaded phiglobal matches 1 in the_end run function #phi.core:the_end_load
execute if score $phi.core.end_loaded phiglobal matches 0 run schedule function phi.core:internal/load_and_setup/is_end_loaded 1t