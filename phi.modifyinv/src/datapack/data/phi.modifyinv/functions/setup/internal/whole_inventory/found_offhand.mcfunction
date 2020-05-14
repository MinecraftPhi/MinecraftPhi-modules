# Add 106 to the slot number so it will fit inside a shulker box:
execute store result storage phi.modifyinv:temp whole_inventory[0].Slot byte 1 run scoreboard players add $phi.modifyinv.slot phitemp 106

# Move item into the offhand section:
data modify storage phi.modifyinv:temp offhand append from storage phi.modifyinv:temp whole_inventory[0]
data remove storage phi.modifyinv:temp whole_inventory[0]

# (This should be the last item, so don't prepare for another.)