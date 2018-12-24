scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.base temp
execute if score $phi.mathfunc.pow.exp temp matches 6..7 run scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.result temp
execute if score $phi.mathfunc.pow.exp temp matches 7 run scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.base temp