# a simple PRNG using LCG
# a = 1103515245, c = 12345, m = overflow (2^31)
# some bits are discarded from the output to avoid issues with very low modulus
# This function uses the seed set in $phi.rng.value phitemp and modifies it
# useful for reproducable RNG, and/or for preventing other modules from messing with the sequence

scoreboard players operation $phi.rng.lcg.seed phitemp *= $phi.rng.lcg.mul phiconst
scoreboard players add $phi.rng.lcg.seed phitemp 12345
scoreboard players operation $phi.rng.value phitemp = $phi.rng.lcg.seed phitemp