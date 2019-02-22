execute store success score $phi.rng.value temp if score $phi.rng.bool.value phiglobal matches ..-1
scoreboard players operation $phi.rng.bool.value phiglobal *= 2 const
scoreboard players add $phi.rng.bool.step phiglobal 1
execute if score $phi.rng.bool.step phiglobal matches 32.. run function phi.rng:internal/calculate_bool