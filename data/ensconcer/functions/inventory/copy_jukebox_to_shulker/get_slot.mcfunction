execute store result score $ensconcer.slot workspace run data get block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0].Slot
# convert overflow negatives to positive
execute if score $ensconcer.slot workspace matches ..-1 run scoreboard players add $ensconcer.slot workspace 256
execute if score $ensconcer.slot workspace <= $ensconcer.maxslot workspace run function ensconcer:inventory/copy_jukebox_to_shulker/below_max