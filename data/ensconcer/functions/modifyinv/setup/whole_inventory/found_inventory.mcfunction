# Remove 9 from the slot number so it will fit inside a shulker box:
execute store result block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory[0].Slot byte 1 run scoreboard players remove $ensconcer.modifyinv.slot temp 9

# Move item into the inventory section:
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.inventory append from block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory[0]
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory[0]

# Get the slot number for the next item and repeat:
execute store result score $ensconcer.modifyinv.slot temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory[0].Slot
function ensconcer:modifyinv/setup/whole_inventory/check_inventory