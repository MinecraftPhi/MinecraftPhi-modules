# copy inventory to the jukebox for temporary storage
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory set from entity @s Inventory

# clear shulker box
data modify block 654321 0 654322 Items set value []

# copy inventory to shulker box for editing and remove appropriate slots from temporary inventory
scoreboard players set $ensconcer.minslot workspace 0
scoreboard players set $ensconcer.maxslot workspace 26
function ensconcer:inventory/copy_jukebox_to_shulker/run