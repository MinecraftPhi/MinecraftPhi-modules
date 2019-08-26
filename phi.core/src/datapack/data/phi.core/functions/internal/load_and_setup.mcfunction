# Synchronously load Phi chunks and create burrows
# Overworld
forceload remove -30000000 1600
forceload add -30000000 1600
function phi.core:internal/create_burrow
# Ensure helper exists
function phi.core:create_helper_entity
function #phi.core:overworld_load
# Nether
execute in the_nether run forceload remove -30000000 1600
execute in the_nether run forceload add -30000000 1600
execute in the_nether run function phi.core:internal/create_burrow
execute in the_nether run function #phi.core:the_nether_load
# End
execute in the_end run forceload remove -30000000 1600
execute in the_end run forceload add -30000000 1600
execute in the_end run function phi.core:internal/create_burrow
execute in the_end run function #phi.core:the_end_load

# Indicate loaded
execute unless score $phi.core.initiated phiglobal matches 1 run function phi.core:internal/setup_complete
scoreboard players set $phi.core.loaded phiglobal 1