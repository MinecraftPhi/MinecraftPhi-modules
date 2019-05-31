execute in overworld store success score $phi.core.overworld_loaded phiglobal if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all
scoreboard players operation $phi.core.loaded_chunks phiglobal += $phi.core.overworld_loaded phiglobal
execute if score $phi.core.overworld_loaded phiglobal matches 1 in overworld run function phi.core:internal/create_burrow
execute if score $phi.core.overworld_loaded phiglobal matches 1 in overworld run function #phi.core:overworld_load
execute if score $phi.core.overworld_loaded phiglobal matches 0 run schedule function phi.core:internal/load_and_setup/is_overworld_loaded 1t