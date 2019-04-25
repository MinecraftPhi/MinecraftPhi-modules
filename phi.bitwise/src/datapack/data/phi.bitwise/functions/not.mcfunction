# $phi.bitwise.result = NOT $phi.bitwise.a

scoreboard players operation $phi.bitwise.result phitemp = $phi.bitwise.a phitemp
scoreboard players add $phi.bitwise.result phitemp 1
scoreboard players operation $phi.bitwise.result phitemp *= -1 phiconst