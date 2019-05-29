# Modified and simplified from Arcensoth's tickbuster pack (https://github.com/Arcensoth/tickbuster-datapack)
# Make sure the tick_end advancement can be obtained every tick. Done here so that it doesn't trigger multiple times in one tick
# Avoid warnings flooding the log by keeping at least one criteria
advancement revoke @a only phi.core:internal/tick_end enter_block
advancement revoke @a only phi.core:internal/tick_end host

# Choose an arbitrary player as the host for this tick.
advancement grant @a[sort=arbitrary,limit=1] only phi.core:internal/tick_end host

execute if score $phi.core.loaded_chunks phiglobal matches 3 unless score $phi.core.initiated phiglobal matches 1 run function phi.core:internal/setup_complete