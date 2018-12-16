# Shift $phi.bitwise.a right $phi.bitwise.b positions, filling with sign bit.

scoreboard players operation $phi.bitwise.result temp = $phi.bitwise.a temp
function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.result temp /= $phi.bitwise.pow temp
