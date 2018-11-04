# Shift $bitwise.a left $bitwise.b positions, filling with zero.

scoreboard players operation $bitwise.result temp = $bitwise.a temp
function ensconcer:bitwise/internal/2_pow_b
scoreboard players operation $bitwise.result temp *= $bitwise.pow temp