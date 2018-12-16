# Set up common scoreboard objectives:
#  phiglobal  namespaced fake-players for persistent values
#  temp     temporary values, do not expect to persist longer than your function runs
#  const    constant values, the values of this objective should never be changed
scoreboard objectives add phiglobal dummy
scoreboard objectives add temp dummy
scoreboard objectives add const dummy

# Load modules:
function #phi.core:load

# If this is the first time, start prompting player to load chunk
execute unless score $phi.core.initiated phiglobal matches 1 run function phi.core:internal/check_chunk_loaded