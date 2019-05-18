# Remove UI items
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{tag:{phi:{crafter:{ui:1b}}}}]
# Remove ingredients and output (less slots to remove compared to number of slots to copy)
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:1b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:2b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:3b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:10b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:11b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:12b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:16b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:19b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:20b}]
data remove block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory[{Slot:21b}]

# Copy to shulker box
data modify block -30000000 0 1602 Items set from block -30000000 0 1600 RecordItem.tag.phi.crafter.inventory
execute positioned ~ ~1 ~ run function phi.modifyinv:drop

# Restore UI items
data modify block ~ ~ ~ Items append from block -30000000 0 1600 RecordItem.tag.phi.crafter.uiItems[]