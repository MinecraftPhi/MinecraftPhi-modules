function phi.rng:lcg
scoreboard players operation $phi.rng.value phitemp %= $phi.rng.range phitemp
scoreboard players operation $phi.rng.value phitemp += $phi.rng.range.min phitemp