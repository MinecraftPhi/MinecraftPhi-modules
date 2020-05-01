data modify entity @s Rotation[0] set from storage phi:mathfunc angle
data modify entity @s Rotation[1] set value 0.0f
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
data modify storage phi:mathfunc cos set from entity @s Pos[2]
# sin is negated, so teleporting backwards produces the correct result
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^-1
data modify storage phi:mathfunc sin set from entity @s Pos[0]