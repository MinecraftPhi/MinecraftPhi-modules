# Add 106 to the slot number so it will fit inside a shulker box:
execute store result storage phi.modifyinv:temp whole_inventory[-1].Slot byte 1 run scoreboard players add $phi.modifyinv.slot phitemp 106

# Move item into the offhand section:
data modify storage phi.modifyinv:temp offhand append from storage phi.modifyinv:temp whole_inventory[-1]
data remove storage phi.modifyinv:temp whole_inventory[-1]

# Get the slot number for the next item:
execute store result score $phi.modifyinv.slot phitemp run data get storage phi.modifyinv:temp whole_inventory[-1].Slot
scoreboard players remove $phi.modifyinv.slot_count phitemp 1