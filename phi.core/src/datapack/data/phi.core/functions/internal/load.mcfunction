# Set up common scoreboard objectives:
#  phiglobal  namespaced fake-players for persistent values
#  phitemp     temporary values, do not expect to persist longer than your function runs
#  phiconst    constant values, the values of this objective should never be changed
scoreboard objectives add phiglobal dummy
scoreboard objectives add phitemp dummy
scoreboard objectives add phiconst dummy

scoreboard players set $phi.core.loaded phiglobal 0
# Load modules:
function #phi.core:load

# Start prompting players to load chunk
function phi.core:internal/load_and_setup