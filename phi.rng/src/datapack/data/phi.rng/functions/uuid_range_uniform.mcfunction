execute if score $phi.rng.range.max temp = $phi.rng.range.min temp run scoreboard players operation $phi.rng.value temp = $phi.rng.range.max temp
execute unless score $phi.rng.range.max temp = $phi.rng.range.min temp run function phi.rng:internal/uuid_range_uniform
