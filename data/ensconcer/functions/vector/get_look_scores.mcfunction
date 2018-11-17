function ensconcer:vector/get_look_nbt.mcfunction
# look vector is normalised to length 1, so any given component must be between -1 and 1, therefore the scale can be 2147483647
execute store result score $ensconcer.vector.look.x temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.vector.look[0] 2147483647
execute store result score $ensconcer.vector.look.y temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.vector.look[1] 2147483647
execute store result score $ensconcer.vector.look.z temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.vector.look[2] 2147483647