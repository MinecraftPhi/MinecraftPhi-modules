data modify entity @s Pos[0] set from storage phi:mathfunc y
data modify entity @s Pos[2] set from storage phi:mathfunc x
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify storage phi:mathfunc neg_angle set from entity @s Rotation[0]