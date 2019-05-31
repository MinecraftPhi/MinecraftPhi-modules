execute in the_nether store success score $phi.core.nether_loaded phiglobal if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all
scoreboard players operation $phi.core.loaded_chunks phiglobal += $phi.core.nether_loaded phiglobal
execute if score $phi.core.nether_loaded phiglobal matches 1 in the_nether run function phi.core:internal/create_burrow
execute if score $phi.core.nether_loaded phiglobal matches 1 in the_nether run function #phi.core:the_nether_load
execute if score $phi.core.nether_loaded phiglobal matches 0 run schedule function phi.core:internal/load_and_setup/is_nether_loaded 1t