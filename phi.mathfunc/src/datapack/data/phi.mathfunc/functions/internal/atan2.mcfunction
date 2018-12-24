data modify entity @s Pos[0] set from block -30000000 0 1600 RecordItem.tag.phi.mathfunc.y
data modify entity @s Pos[2] set from block -30000000 0 1600 RecordItem.tag.phi.mathfunc.x
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify block -30000000 0 1600 RecordItem.tag.phi.mathfunc.neg_angle set from entity @s Rotation[0]