# clear sign bit
scoreboard players add $phi.rng.value temp 2147483647
scoreboard players add $phi.rng.value temp 1

scoreboard players operation $phi.rng.value temp /= 2 const
scoreboard players add $phi.rng.value temp 1073741824