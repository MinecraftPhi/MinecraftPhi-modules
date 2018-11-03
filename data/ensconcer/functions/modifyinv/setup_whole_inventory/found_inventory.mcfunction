# Remove 9 from the slot number so it will fit inside a shulker box:
execute store result block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0].Slot byte 1 run scoreboard players remove $modifyinv.slot workspace 9

# Move item into the inventory section:
data modify block 654321 0 654321 RecordItem.tag.ensconcer.inventory append from block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0]
data remove block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0]

# Get the slot number for the next item and repeat:
execute store result score $modifyinv.slot workspace run data get block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0].Slot
function ensconcer:modifyinv/setup_whole_inventory/check_inventory