function phi.rng:lcg

execute store success score $phi.rng.in_range temp if score $phi.rng.value temp < $phi.rng.range.min temp
execute if score $phi.rng.in_range temp matches 0 store success score $phi.rng.in_range temp if score $phi.rng.value temp > $phi.rng.range.max temp
execute unless score $phi.rng.in_range temp matches 0 run function phi.rng:internal/lcg_range/large_loop