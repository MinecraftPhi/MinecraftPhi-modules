# save previous inventory section
drop entity @s inventory.0 27 mine 654321 0 654322 minecraft:golden_pickaxe{drop_contents:true}

# copy next section
scoreboard players set $ensconcer.minslot workspace 100
scoreboard players set $ensconcer.maxslot workspace 103
function ensconcer:inventory/copy_jukebox_to_shulker