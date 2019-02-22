scoreboard players operation $phi.mathfunc.is_pow_2.temp temp = $phi.mathfunc.value temp

# special case 0 to prevent an infinite loop
execute if score $phi.mathfunc.is_pow_2.temp temp matches 0 run scoreboard players set $phi.mathfunc.is_pow_2 temp 0

# Because of overflow -(min int) = min int, so special case
execute if score $phi.mathfunc.is_pow_2.temp temp matches -2147483648 run scoreboard players set $phi.mathfunc.is_pow_2 temp 1

# The algorithm assumes positive numbers
execute if score $phi.mathfunc.is_pow_2.temp temp matches -2147483647..-1 run scoreboard players operation $phi.mathfunc.is_pow_2.temp temp *= -1 const
execute if score $phi.mathfunc.is_pow_2.temp temp matches 1.. run function phi.mathfunc:internal/is_pow_2/check