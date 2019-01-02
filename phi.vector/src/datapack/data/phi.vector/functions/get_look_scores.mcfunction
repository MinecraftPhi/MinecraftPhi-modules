function phi.vector:get_look_nbt
# look vector is normalised to length 1, so any given component must be between -1 and 1, therefore the scale can be 2147483647
execute store result score $phi.vector.look.x temp run data get block -30000000 0 1600 RecordItem.tag.phi.vector.look[0] 2147483647
execute store result score $phi.vector.look.y temp run data get block -30000000 0 1600 RecordItem.tag.phi.vector.look[1] 2147483647
execute store result score $phi.vector.look.z temp run data get block -30000000 0 1600 RecordItem.tag.phi.vector.look[2] 2147483647