execute store result score $phi.mathfunc.pow.cubed temp run scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.base temp
scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.result temp
scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.result temp
scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.cubed temp
scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.result temp
execute if score $phi.mathfunc.pow.exp temp matches 31 run scoreboard players operation $phi.mathfunc.pow.result temp *= $phi.mathfunc.pow.base temp