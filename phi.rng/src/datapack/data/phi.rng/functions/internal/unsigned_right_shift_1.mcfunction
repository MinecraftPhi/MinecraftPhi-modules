# clear sign bit
scoreboard players add $phi.rng.value phitemp 2147483647
scoreboard players add $phi.rng.value phitemp 1

scoreboard players operation $phi.rng.value phitemp /= 2 phiconst
scoreboard players add $phi.rng.value phitemp 1073741824