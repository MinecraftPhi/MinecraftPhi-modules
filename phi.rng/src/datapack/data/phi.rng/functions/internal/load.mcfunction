scoreboard players set $phi.rng.lcg.mul phiconst 1103515245
scoreboard players set 2 phiconst 2
scoreboard players set $phi.rng.lcg.discard phiconst 16
scoreboard players operation $phi.rng.lcg_range.discard phiconst = $phi.rng.lcg.discard phiconst
scoreboard players operation $phi.rng.lcg_range.discard phiconst /= 2 phiconst

# only calculate seed if it hasn't already been set
execute unless score $phi.rng.lcg.global_seed phiglobal matches -2147483648.. run function phi.rng:reset_seed
execute unless score $phi.rng.bool.value phiglobal matches -2147483648.. run function phi.rng:internal/calculate_bool