data modify entity @s Rotation[0] set from block -30000000 0 1600 RecordItem.tag.phi.mathfunc.angle
data modify entity @s Rotation[1] set value 0.0f
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
data modify block -30000000 0 1600 RecordItem.tag.phi.mathfunc.cos set from entity @s Pos[2]
# sin is negated, so teleporting backwards produces the correct result
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^-1
data modify block -30000000 0 1600 RecordItem.tag.phi.mathfunc.sin set from entity @s Pos[0]