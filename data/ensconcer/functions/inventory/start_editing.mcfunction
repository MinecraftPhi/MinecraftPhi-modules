# copy inventory to the jukebox for temporary storage
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory set from entity @s Inventory

# copy hotbar
scoreboard players set $ensconcer.minslot workspace 0
scoreboard players set $ensconcer.maxslot workspace 8
function ensconcer:inventory/copy_jukebox_to_shulker