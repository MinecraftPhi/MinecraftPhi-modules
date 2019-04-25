execute store result score $phi.mathfunc.pow.squared phitemp run scoreboard players operation $phi.mathfunc.pow.result phitemp *= $phi.mathfunc.pow.base phitemp
execute if score $phi.mathfunc.pow.exp phitemp matches 3..7 run function phi.mathfunc:internal/pow/3_7
execute if score $phi.mathfunc.pow.exp phitemp matches 8..15 run function phi.mathfunc:internal/pow/8_15
execute if score $phi.mathfunc.pow.exp phitemp matches 16..23 run function phi.mathfunc:internal/pow/16_23
execute if score $phi.mathfunc.pow.exp phitemp matches 24..31 run function phi.mathfunc:internal/pow/24_31