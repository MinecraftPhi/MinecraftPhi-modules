scoreboard players operation $ensconcer.mathfunc.pow.result temp = $ensconcer.mathfunc.pow.base temp
execute store result score $ensconcer.mathfunc.pow.success temp if score $ensconcer.mathfunc.pow.exp temp matches 0..31
execute if score $ensconcer.mathfunc.pow.exp temp matches 0 run scoreboard players set $ensconcer.mathfunc.pow.result temp 1
execute if score $ensconcer.mathfunc.pow.exp temp matches 2..31 run function ensconcer:mathfunc/pow/2_31