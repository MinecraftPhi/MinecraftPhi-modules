execute if score $ensconcer.slot workspace >= $ensconcer.minslot workspace run function ensconcer:inventory/copy_jukebox_to_shulker/in_range
data remove block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0]
function ensconcer:inventory/copy_jukebox_to_shulker/run