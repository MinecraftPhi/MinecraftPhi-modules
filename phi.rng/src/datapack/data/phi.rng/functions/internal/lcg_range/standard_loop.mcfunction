function phi.rng:lcg_raw

execute if score $phi.rng.value temp matches 0.. run scoreboard players operation $phi.rng.value temp /= 2 const
execute if score $phi.rng.value temp matches ..-1 run function phi.rng:internal/unsigned_right_shift_1

# discard the bits that would have been discarded by phi.rng:lcg
scoreboard players operation $phi.rng.value temp /= $phi.rng.lcg_range.discard const

scoreboard players operation $phi.rng.temp temp = $phi.rng.value temp
scoreboard players operation $phi.rng.value temp %= $phi.rng.range temp
scoreboard players operation $phi.rng.temp temp -= $phi.rng.value temp
scoreboard players operation $phi.rng.temp temp += $phi.rng.range.m1 temp
execute if score $phi.rng.temp temp matches ..-1 run function phi.rng:internal/lcg_range/standard_loop