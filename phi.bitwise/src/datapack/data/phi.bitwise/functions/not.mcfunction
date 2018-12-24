# $phi.bitwise.result = NOT $phi.bitwise.a

scoreboard players operation $phi.bitwise.result temp = $phi.bitwise.a temp
scoreboard players add $phi.bitwise.result temp 1
scoreboard players operation $phi.bitwise.result temp *= -1 const