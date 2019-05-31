execute if score $phi.core.loaded_chunks phiglobal matches 3 unless score $phi.core.loaded phiglobal matches 1 run function phi.core:internal/on_full_load
execute if score $phi.core.loaded_chunks phiglobal matches 3 unless score $phi.core.initiated phiglobal matches 1 run function phi.core:internal/setup_complete
execute if score $phi.core.loaded_chunks phiglobal matches 3 run function #phi.core:tick
execute if score $phi.core.overworld_loaded phiglobal matches 1 in overworld run function #phi.core:overworld_tick
execute if score $phi.core.the_nether_loaded phiglobal matches 1 in the_nether run function #phi.core:the_nether_tick
execute if score $phi.core.the_end_loaded phiglobal matches 1 in the_end run function #phi.core:the_end_tick