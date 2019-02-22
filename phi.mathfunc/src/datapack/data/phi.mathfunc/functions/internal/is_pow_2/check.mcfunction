execute if score $phi.mathfunc.is_pow_2.temp temp matches -2147483648 run scoreboard players set $phi.mathfunc.is_pow_2 temp 1
execute if score $phi.mathfunc.is_pow_2.temp temp matches -2147483647..-1 run scoreboard players set $phi.mathfunc.is_pow_2 temp 0
execute if score $phi.mathfunc.is_pow_2.temp temp matches 0.. run function phi.mathfunc:internal/is_pow_2/step