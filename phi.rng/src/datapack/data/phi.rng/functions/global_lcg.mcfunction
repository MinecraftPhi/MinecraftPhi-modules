# a simple PRNG using LCG
# a = 1103515245, c = 12345, m = overflow (2^31)
# some bits are discarded from the output to avoid issues with very low modulus
# This function uses a global seed, calculated automatically on load if it hasn't already been calculated, or when reset manually with phi.rng:reset_seed

scoreboard players operation $phi.rng.lcg.global_seed phiglobal *= $phi.rng.lcg.mul phiconst
scoreboard players add $phi.rng.lcg.global_seed phiglobal 12345
scoreboard players operation $phi.rng.value phitemp = $phi.rng.lcg.global_seed phiglobal
scoreboard players operation $phi.rng.value phitemp /= $phi.rng.lcg.discard phiconst