execute store success score $phi.core.result temp run tp ec-0-0-0-1 ~ ~ ~
execute if score $phi.core.result temp matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,UUIDMost:1013612281856L,UUIDLeast:1L,Tags:["phi.core.ec.0.0.0.1"]}
execute if score $phi.core.result temp matches 1 run tag ec-0-0-0-1 add phi.core.ec.0.0.0.1
