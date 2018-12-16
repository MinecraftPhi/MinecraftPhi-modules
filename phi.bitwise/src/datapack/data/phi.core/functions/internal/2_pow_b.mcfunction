# $phi.bitwise.pow = 2 ^ $phi.bitwise.b

execute if score $phi.bitwise.b temp matches ..15 run function phi.bitwise:internal/2_pow_b/16/0_15
execute if score $phi.bitwise.b temp matches 16.. run function phi.bitwise:internal/2_pow_b/16/16_31