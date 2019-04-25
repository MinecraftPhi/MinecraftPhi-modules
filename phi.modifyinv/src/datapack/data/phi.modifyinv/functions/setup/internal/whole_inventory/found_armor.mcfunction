# Remove 100 from the slot number so it will fit inside a shulker box:
execute store result block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot byte 1 run scoreboard players remove $phi.modifyinv.slot phitemp 100

# Move item into the armor section:
data modify block -30000000 0 1600 RecordItem.tag.phi.modifyinv.armor append from block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0]
data remove block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0]

# Get the slot number for the next item and repeat:
execute store result score $phi.modifyinv.slot phitemp run data get block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
function phi.modifyinv:setup/internal/whole_inventory/check_armor