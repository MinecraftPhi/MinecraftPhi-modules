execute store result score $ensconcer.mathfunc.pow.cubed temp run scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.base temp
scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.result temp
scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.result temp
scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.cubed temp
scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.result temp
execute if score $ensconcer.mathfunc.pow.exp temp matches 31 run scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.base temp