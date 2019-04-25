# Modified and simplified from Arcensoth's tickbuster pack (https://github.com/Arcensoth/tickbuster-datapack)
# Make sure the tick_end advancement can be obtained every tick. Done here so that it doesn't trigger multiple times in one tick
advancement revoke @a only phi.core:internal/tick_end

# Choose an arbitrary player as the host for this tick.
advancement grant @a[sort=arbitrary,limit=1] only phi.core:internal/tick_end host