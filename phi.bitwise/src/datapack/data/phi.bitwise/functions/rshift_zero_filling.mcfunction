# Shift $phi.bitwise.a right $phi.bitwise.b positions, filling with zero.

execute if score $phi.bitwise.a phitemp matches 0.. run function phi.bitwise:rshift_sign_propagating
execute if score $phi.bitwise.a phitemp matches ..-1 run function phi.bitwise:internal/rshift_zero_filling_negative