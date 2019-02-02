scoreboard players operation $phi.rng.range temp = $phi.rng.range.max temp
scoreboard players operation $phi.rng.range temp -= $phi.rng.range.min temp
function phi.rng:uuid
scoreboard players operation $phi.rng.value temp %= $phi.rng.range temp
scoreboard players operation $phi.rng.value temp += $phi.rng.range.min temp