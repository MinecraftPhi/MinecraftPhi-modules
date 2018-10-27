# Set up common scoreboard objectives:
# 	global		namespaced fake-players for persistent values
#	workspace	temporary values, do not expect to persist longer than your function runs
scoreboard objectives add global dummy
scoreboard objectives add workspace dummy

# If this is the first time, start prompting player to load chunk
execute unless score ensconcer:initiated global matches 1 run function ensconcer:check_chunk_loaded