scoreboard players operation $phi.rng.range.m1 temp = $phi.rng.range temp
scoreboard players remove $phi.rng.range.m1 temp 1
function phi.rng:internal/lcg_range/standard_loop
scoreboard players operation $phi.rng.value temp += $phi.rng.range.min temp