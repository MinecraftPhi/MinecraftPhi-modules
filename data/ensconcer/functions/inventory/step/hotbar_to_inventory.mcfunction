# save previous inventory section
drop entity @s hotbar.0 9 mine 654321 0 654322 minecraft:golden_pickaxe{drop_contents:true}

# copy next section
scoreboard players set $ensconcer.minslot workspace 9
scoreboard players set $ensconcer.maxslot workspace 35
function ensconcer:inventory/copy_jukebox_to_shulker