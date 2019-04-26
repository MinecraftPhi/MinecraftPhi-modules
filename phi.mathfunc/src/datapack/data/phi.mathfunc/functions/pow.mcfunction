scoreboard players operation $phi.mathfunc.pow.result phitemp = $phi.mathfunc.pow.base phitemp
execute store result score $phi.mathfunc.pow.success phitemp if score $phi.mathfunc.pow.exp phitemp matches 0..31
execute if score $phi.mathfunc.pow.exp phitemp matches 0 run scoreboard players set $phi.mathfunc.pow.result phitemp 1
execute if score $phi.mathfunc.pow.exp phitemp matches 2..31 run function phi.mathfunc:internal/pow/2_31