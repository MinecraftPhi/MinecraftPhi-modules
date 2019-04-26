scoreboard players operation $phi.rng.range phitemp = $phi.rng.range.max phitemp
scoreboard players operation $phi.rng.range phitemp -= $phi.rng.range.min phitemp
execute if score $phi.rng.range phitemp matches ..-1 run function phi.rng:internal/uuid_range/large_loop
execute if score $phi.rng.range phitemp matches 0.. run function phi.rng:internal/uuid_range/standard_loop_start