# Get the first slot number in preparation:
execute store result score $phi.modifyinv.slot phitemp run data get block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
execute store result score $phi.modifyinv.slot_count phitemp run data get block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory

# Check all the sections in turn, sorting them (slots always appear in order):
function phi.modifyinv:setup/internal/whole_inventory/check_hotbar
function phi.modifyinv:setup/internal/whole_inventory/check_inventory
function phi.modifyinv:setup/internal/whole_inventory/check_armor
function phi.modifyinv:setup/internal/whole_inventory/check_offhand