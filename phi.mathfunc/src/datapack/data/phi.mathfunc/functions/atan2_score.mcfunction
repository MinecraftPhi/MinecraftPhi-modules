function phi.mathfunc:neg_atan2_nbt
# result is -180..180, so the maximum scale is 11930464, negated to account for the negated result
execute store result score $phi.mathfunc.angle phitemp run data get storage phi.mathfunc:temp neg_angle -11930464