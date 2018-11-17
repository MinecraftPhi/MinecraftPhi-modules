execute as ec-0-0-0-1 run function ensconcer:mathfunc/atan2/calculate
# result is -180..180, so the maximum scale is 11930464
execute store result score $ensconcer.mathfunc.angle temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.mathfunc.angle 11930464