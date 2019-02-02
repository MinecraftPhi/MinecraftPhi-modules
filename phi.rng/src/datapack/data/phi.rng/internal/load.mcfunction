scoreboard players set $phi.rng.lcg.mul const 1103515245
scoreboard players set $phi.rng.lcg.discard const 16

# only calculate seed if it hasn't already been set
execute unless $phi.rng.lcg.seed phiglobal matches -2147483648.. run function phi.rng:reset_seed