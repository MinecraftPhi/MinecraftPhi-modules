# $phi.bitwise.pow = 2 ^ $phi.bitwise.b

execute if score $phi.bitwise.b temp matches ..7 run function phi.bitwise:internal/2_pow_b/8/0_7
execute if score $phi.bitwise.b temp matches 8..15 run function phi.bitwise:internal/2_pow_b/8/8_15
execute if score $phi.bitwise.b temp matches 16..23 run function phi.bitwise:internal/2_pow_b/8/16_23
execute if score $phi.bitwise.b temp matches 24.. run function phi.bitwise:internal/2_pow_b/8/16_31