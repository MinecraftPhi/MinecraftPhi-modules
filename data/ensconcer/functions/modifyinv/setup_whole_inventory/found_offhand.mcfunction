# Add 106 to the slot number so it will fit inside a shulker box:
execute store result block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0].Slot byte 1 run scoreboard players add $modifyinv.slot temp 106

# Move item into the offhand section:
data modify block 654321 0 654321 RecordItem.tag.ensconcer.offhand append from block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0]
data remove block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory[0]

# (This should be the last item, so don't prepare for another.)