# Copy player inventory data to jukebox and sort into sections so they can be loaded.

# Reset sections:
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.inventory set value []
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.hotbar set value []
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.armor set value []
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.offhand set value []

# Copy whole inventory data:
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory set from entity @s Inventory

# Sort the slots into sections:
function ensconcer:modifyinv/setup/whole_inventory/sort_slots