# Remove temporary data used by this module:
scoreboard players reset $modifyinv.slot temp
data remove block 654321 0 654321 RecordItem.tag.ensconcer.inventory
data remove block 654321 0 654321 RecordItem.tag.ensconcer.hotbar
data remove block 654321 0 654321 RecordItem.tag.ensconcer.armor
data remove block 654321 0 654321 RecordItem.tag.ensconcer.offhand
data remove block 654321 0 654321 RecordItem.tag.ensconcer.enderchest
data remove block 654321 0 654321 RecordItem.tag.ensconcer.whole_inventory
data modify block 654321 0 654322 Items set value []