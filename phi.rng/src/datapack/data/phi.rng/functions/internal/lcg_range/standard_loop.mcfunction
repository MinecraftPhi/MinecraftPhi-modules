function phi.rng:lcg_raw

execute if score $phi.rng.value phitemp matches 0.. run scoreboard players operation $phi.rng.value phitemp /= 2 phiconst
execute if score $phi.rng.value phitemp matches ..-1 run function phi.rng:internal/unsigned_right_shift_1

# discard the bits that would have been discarded by phi.rng:lcg
scoreboard players operation $phi.rng.value phitemp /= $phi.rng.lcg_range.discard phiconst

scoreboard players operation $phi.rng.phitemp phitemp = $phi.rng.value phitemp
scoreboard players operation $phi.rng.value phitemp %= $phi.rng.range phitemp
scoreboard players operation $phi.rng.phitemp phitemp -= $phi.rng.value phitemp
scoreboard players operation $phi.rng.phitemp phitemp += $phi.rng.range.m1 phitemp
execute if score $phi.rng.phitemp phitemp matches ..-1 run function phi.rng:internal/lcg_range/standard_loop