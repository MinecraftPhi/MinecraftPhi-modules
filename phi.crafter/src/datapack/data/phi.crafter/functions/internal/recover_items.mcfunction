# Remove UI items
data remove storage phi:crafter inventory[{tag:{phi:{crafter:{ui:1b}}}}]
# Remove ingredients and output (less slots to remove compared to number of slots to copy)
data remove storage phi:crafter inventory[{Slot:1b}]
data remove storage phi:crafter inventory[{Slot:2b}]
data remove storage phi:crafter inventory[{Slot:3b}]
data remove storage phi:crafter inventory[{Slot:10b}]
data remove storage phi:crafter inventory[{Slot:11b}]
data remove storage phi:crafter inventory[{Slot:12b}]
data remove storage phi:crafter inventory[{Slot:16b}]
data remove storage phi:crafter inventory[{Slot:19b}]
data remove storage phi:crafter inventory[{Slot:20b}]
data remove storage phi:crafter inventory[{Slot:21b}]

# Copy to shulker box
data modify block -30000000 0 1602 Items set from storage phi:crafter inventory
execute positioned ~ ~1 ~ run function phi.modifyinv:drop

# Restore UI items
data modify block ~ ~ ~ Items append from storage phi:crafter uiItems[]