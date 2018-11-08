# Remove temporary data used by this module:
scoreboard players reset $modifyinv.slot temp
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.inventory
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.hotbar
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.armor
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.offhand
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.enderchest
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.whole_inventory
data modify block -30000000 0 1602 Items set value []