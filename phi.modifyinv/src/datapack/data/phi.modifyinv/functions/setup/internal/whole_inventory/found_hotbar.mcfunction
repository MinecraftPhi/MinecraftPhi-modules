# Move item into the hotbar section:
data modify storage phi.modifyinv:temp hotbar append from storage phi.modifyinv:temp whole_inventory[-1]
data remove storage phi.modifyinv:temp whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score $phi.modifyinv.slot phitemp run data get storage phi.modifyinv:temp whole_inventory[-1].Slot
scoreboard players remove $phi.modifyinv.slot_count phitemp 1
function phi.modifyinv:setup/internal/whole_inventory/check_hotbar