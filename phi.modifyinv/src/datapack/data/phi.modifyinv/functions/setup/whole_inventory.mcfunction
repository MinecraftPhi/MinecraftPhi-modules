# Copy player inventory data to jukebox and sort into sections so they can be loaded.

# Reset sections:
data modify storage phi:modifyinv inventory set value []
data modify storage phi:modifyinv hotbar set value []
data modify storage phi:modifyinv armor set value []
data modify storage phi:modifyinv offhand set value []

# Copy whole inventory data:
data modify storage phi:modifyinv whole_inventory set from entity @s Inventory

# Sort the slots into sections:
function phi.modifyinv:setup/internal/whole_inventory/sort_slots