# save previous inventory section
drop entity @s armor.feet 4 mine 654321 0 654322 minecraft:golden_pickaxe{drop_contents:true}

# copy next section
scoreboard players set $ensconcer.minslot workspace 150
scoreboard players set $ensconcer.maxslot workspace 150
function ensconcer:inventory/copy_jukebox_to_shulker