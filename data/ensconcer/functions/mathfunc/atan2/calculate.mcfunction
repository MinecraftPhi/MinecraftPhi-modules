data modify entity @s Pos[0] set from block -30000000 0 1600 RecordItem.tag.ensconcer.mathfunc.neg_x
data modify entity @s Pos[2] set from block -30000000 0 1600 RecordItem.tag.ensconcer.mathfunc.z
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.mathfunc.angle set from entity @s Rotation[0]