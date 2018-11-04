# Shift $bitwise.a right $bitwise.b positions, filling with zero.

execute if score $bitwise.a temp matches 0.. run function ensconcer:bitwise/rshift_sign_propagating
execute if score $bitwise.a temp matches ..-1 run function ensconcer:bitwise/internal/rshift_zero_filling_negative