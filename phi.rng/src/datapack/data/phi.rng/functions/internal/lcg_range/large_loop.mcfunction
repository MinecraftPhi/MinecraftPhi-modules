function phi.rng:lcg

execute store success score $phi.rng.in_range phitemp if score $phi.rng.value phitemp < $phi.rng.range.min phitemp
execute if score $phi.rng.in_range phitemp matches 0 store success score $phi.rng.in_range phitemp if score $phi.rng.value phitemp > $phi.rng.range.max phitemp
execute unless score $phi.rng.in_range phitemp matches 0 run function phi.rng:internal/lcg_range/large_loop