scoreboard players operation $phi.rng.range temp = $phi.rng.range.max temp
scoreboard players operation $phi.rng.range temp -= $phi.rng.range.min temp
scoreboard players operation $phi.rng.range.m1 temp = $phi.rng.range temp
scoreboard players remove $phi.rng.range.m1 temp 1
function phi.rng:internal/lcg_range/loop
scoreboard players operation $phi.rng.value temp += $phi.rng.range.min temp