scoreboard players set $phi.vector.set_look.success phitemp 1
data modify entity ec-0-0-0-1 Pos set from storage phi:vector look
execute positioned 0.0 0.0 0.0 facing entity ec-0-0-0-1 feet positioned as @s run tp @s ~ ~ ~ ~ ~