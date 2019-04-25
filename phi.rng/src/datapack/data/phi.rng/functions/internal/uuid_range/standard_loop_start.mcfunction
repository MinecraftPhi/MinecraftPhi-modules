scoreboard players operation $phi.rng.range.m1 phitemp = $phi.rng.range phitemp
scoreboard players remove $phi.rng.range.m1 phitemp 1
function phi.rng:internal/uuid_range/standard_loop
scoreboard players operation $phi.rng.value phitemp += $phi.rng.range.min phitemp