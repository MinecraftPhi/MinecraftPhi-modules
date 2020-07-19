# Assumes running at 0.0 0.0 0.0
data modify entity @s Rotation[0] set from storage phi.mathfunc:temp angle
# rotated ~ 0 ensures the x rotation is completely ignored. Also teleport with rotation to avoid the need for using rotated in the sine calculation
execute rotated as @s rotated ~ 0 run tp @s ^ ^ ^1 ~ ~
data modify storage phi.mathfunc:temp cos set from entity @s Pos[2]
# sin is negated, so teleporting backwards produces the correct result
execute rotated as @s run tp @s ^ ^ ^-1
data modify storage phi.mathfunc:temp sin set from entity @s Pos[0]