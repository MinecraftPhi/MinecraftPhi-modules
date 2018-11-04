# Shifts negative $bitwise.a right $bitwise.b positions, filling with zero.

scoreboard players add $bitwise.a temp 2147483647
scoreboard players add $bitwise.a temp 1

function ensconcer:bitwise/internal/2_pow_b
scoreboard players operation $bitwise.a temp /= $bitwise.pow temp

scoreboard players remove $bitwise.b temp 31
scoreboard players operation $bitwise.b temp *= -1 const
function ensconcer:bitwise/internal/2_pow_b
scoreboard players operation $bitwise.a temp += $bitwise.pow temp

scoreboard players operation $bitwise.result temp = $bitwise.a temp