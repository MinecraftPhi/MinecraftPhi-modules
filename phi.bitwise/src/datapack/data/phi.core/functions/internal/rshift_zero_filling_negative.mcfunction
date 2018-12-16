# Shifts negative $phi.bitwise.a right $phi.bitwise.b positions, filling with zero.

# clear sign bit
scoreboard players add $phi.bitwise.a temp 2147483647
scoreboard players add $phi.bitwise.a temp 1

function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.a temp /= $phi.bitwise.pow temp

scoreboard players remove $phi.bitwise.b temp 31
scoreboard players operation $phi.bitwise.b temp *= -1 const
function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.a temp += $phi.bitwise.pow temp

scoreboard players operation $phi.bitwise.result temp = $phi.bitwise.a temp