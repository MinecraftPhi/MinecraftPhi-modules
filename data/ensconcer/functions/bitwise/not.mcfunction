# $bitwise.result = NOT $bitwise.a

scoreboard players operation $bitwise.result temp = $bitwise.a temp
scoreboard players add $bitwise.result temp 1
scoreboard players operation $bitwise.result temp *= -1 const