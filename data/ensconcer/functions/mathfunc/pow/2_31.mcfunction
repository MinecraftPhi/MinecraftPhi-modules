execute store result score $ensconcer.mathfunc.pow.squared temp run scoreboard players operation $ensconcer.mathfunc.pow.result temp *= $ensconcer.mathfunc.pow.base temp
execute if score $ensconcer.mathfunc.pow.exp temp matches 3..7 run function ensconcer:mathfunc/pow/3_7
execute if score $ensconcer.mathfunc.pow.exp temp matches 8..15 run function ensconcer:mathfunc/pow/8_15
execute if score $ensconcer.mathfunc.pow.exp temp matches 16..23 run function ensconcer:mathfunc/pow/16_23
execute if score $ensconcer.mathfunc.pow.exp temp matches 24..31 run function ensconcer:mathfunc/pow/24_31