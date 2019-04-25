# Shift $phi.bitwise.a right $phi.bitwise.b positions, filling with sign bit.

scoreboard players operation $phi.bitwise.result phitemp = $phi.bitwise.a phitemp
function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.result phitemp /= $phi.bitwise.pow phitemp
