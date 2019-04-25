function phi.rng:uuid

execute if score $phi.rng.value phitemp matches 0.. run scoreboard players operation $phi.rng.value phitemp /= 2 phiconst
execute if score $phi.rng.value phitemp matches ..-1 run function phi.rng:internal/unsigned_right_shift_1

scoreboard players operation $phi.rng.phitemp phitemp = $phi.rng.value phitemp
scoreboard players operation $phi.rng.value phitemp %= $phi.rng.range phitemp
scoreboard players operation $phi.rng.phitemp phitemp -= $phi.rng.value phitemp
scoreboard players operation $phi.rng.phitemp phitemp += $phi.rng.range.m1 phitemp
execute if score $phi.rng.phitemp phitemp matches ..-1 run function phi.rng:internal/uuid_range/standard_loop