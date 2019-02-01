# a simple PRNG using LCG
# a = 1103515245, c = 12345, m = overflow (2^31)
# some bits are discarded from the output to avoid issues with very low modulus
# This function uses the seed set in $phi.rng.value temp and modifies it
# useful for reproducable RNG, and/or for preventing other modules from messing with the sequence

scoreboard players operation $phi.rng.lcg.seed temp *= $phi.rng.lcg.mul const
scoreboard players operation $phi.rng.lcg.seed temp += $phi.rng.lcg.inc const
scoreboard players operation $phi.rng.value temp = $phi.rng.lcg.seed temp
scoreboard players operation $phi.rng.value temp /= $phi.rng.lcg.discard const