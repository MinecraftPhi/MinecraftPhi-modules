# 71 is the largest scale that can be used without any chance of overflow
# this function isn't recommended, most use cases can use a larger scale
# if floating point gets implemented this will switch to floating point
execute store result score $ensconcer.vector.pos.x temp run data get entity @s Pos[0] 71
execute store result score $ensconcer.vector.pos.y temp run data get entity @s Pos[1] 71
execute store result score $ensconcer.vector.pos.z temp run data get entity @s Pos[2] 71