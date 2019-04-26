# Shifts negative $phi.bitwise.a right $phi.bitwise.b positions, filling with zero.

# clear sign bit
scoreboard players add $phi.bitwise.a phitemp 2147483647
scoreboard players add $phi.bitwise.a phitemp 1

function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.a phitemp /= $phi.bitwise.pow phitemp

scoreboard players remove $phi.bitwise.b phitemp 31
scoreboard players operation $phi.bitwise.b phitemp *= -1 phiconst
function phi.bitwise:internal/2_pow_b
scoreboard players operation $phi.bitwise.a phitemp += $phi.bitwise.pow phitemp

scoreboard players operation $phi.bitwise.result phitemp = $phi.bitwise.a phitemp