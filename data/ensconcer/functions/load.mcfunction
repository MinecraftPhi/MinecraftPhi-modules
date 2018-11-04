# Set up common scoreboard objectives:
#  eglobal  namespaced fake-players for persistent values
#  temp     temporary values, do not expect to persist longer than your function runs
#  const    constant values, the values of this objective should never be changed
scoreboard objectives add eglobal dummy
scoreboard objectives add temp dummy
scoreboard objectives add const dummy

# Load modules:
function ensconcer:bitwise/setup

# If this is the first time, start prompting player to load chunk
execute unless score $ensconcer.initiated eglobal matches 1 run function ensconcer:check_chunk_loaded