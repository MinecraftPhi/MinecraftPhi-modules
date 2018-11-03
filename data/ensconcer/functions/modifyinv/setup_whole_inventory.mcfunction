# Copy player inventory data to jukebox and sort into sections so they can be loaded.

# Reset sections:
data modify block 654321 0 654321 RecordItem.tag.ensconcer.inventory set value []
data modify block 654321 0 654321 RecordItem.tag.ensconcer.hotbar set value []
data modify block 654321 0 654321 RecordItem.tag.ensconcer.armor set value []
data modify block 654321 0 654321 RecordItem.tag.ensconcer.offhand set value []

# Copy whole inventory data:
data modify block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory set from entity @s Inventory

# Sort the slots into sections:
function ensconcer:modifyinv/setup_whole_inventory/sort_slots