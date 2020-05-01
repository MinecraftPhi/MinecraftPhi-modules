function phi.vector:get_look_nbt
# look vector is normalised to length 1, so any given component must be between -1 and 1, therefore the scale can be 2147483647
execute store result score $phi.vector.look.x phitemp run data get storage phi:vector look[0] 2147483647
execute store result score $phi.vector.look.y phitemp run data get storage phi:vector look[1] 2147483647
execute store result score $phi.vector.look.z phitemp run data get storage phi:vector look[2] 2147483647