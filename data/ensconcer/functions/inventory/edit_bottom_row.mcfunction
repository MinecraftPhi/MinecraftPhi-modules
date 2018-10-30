# save previous inventory section
drop entity @s hotbar.0 mine 654321 0 654322 minecraft:golden_pickaxe{drop_contents:true}

# clear shulker box
data modify block 654321 0 654322 Items set value []

# copy inventory to shulker box for editing and remove appropriate slots from temporary inventory
scoreboard players set $ensconcer.minslot workspace 27
scoreboard players set $ensconcer.maxslot workspace 35
function ensconcer:inventory/copy_jukebox_to_shulker/run