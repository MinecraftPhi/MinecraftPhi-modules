function ensconcer:mathfunc/sin_cos/setup
# sine needs to be negated, which can't be done in NBT, so sine will always return as a score, unless NBT maths operations become possible
execute store result score $ensconcer.mathfunc.sin temp run data get entity @s Pos[0] -2147483647
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.mathfunc.cos set from entity @s Pos[2]