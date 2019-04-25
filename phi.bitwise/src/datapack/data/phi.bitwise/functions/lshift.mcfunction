# Shift $phi.bitwise.a left $phi.bitwise.b positions, filling with zero.

scoreboard players operation $phi.bitwise.result phitemp = $phi.bitwise.a phitemp
function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.result phitemp *= $phi.bitwise.pow phitemp