scoreboard players operation $phi.mathfunc.pow.result temp = $phi.mathfunc.pow.base temp
execute store result score $phi.mathfunc.pow.success temp if score $phi.mathfunc.pow.exp temp matches 0..31
execute if score $phi.mathfunc.pow.exp temp matches 0 run scoreboard players set $phi.mathfunc.pow.result temp 1
execute if score $phi.mathfunc.pow.exp temp matches 2..31 run function phi.mathfunc:internal/pow/2_31