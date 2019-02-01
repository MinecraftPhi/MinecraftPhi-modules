summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["phi.rng.uuid"]}
execute as @e[tag=phi.rng.uuid,distance=..0.001,limit=1] run function phi.rng:internal/uuid