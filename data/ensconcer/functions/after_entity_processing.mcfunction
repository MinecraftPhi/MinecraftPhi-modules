function #ensconcer:overworld_tick
execute store success score $encsoncer.result temp run tp ec-0-0-0-1 ~ ~ ~
execute if score $encsoncer.result temp matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,UUIDMost:1013612281856L,UUIDLeast:1L,Tags:["ensconcer.ec.0.0.0.1"]}
execute if score $encsoncer.result temp matches 1 run tag ec-0-0-0-1 add ensconcer.ec.0.0.0.1