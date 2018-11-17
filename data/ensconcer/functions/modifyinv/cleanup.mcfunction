# Remove temporary data used by this module:
scoreboard players reset $modifyinv.slot temp
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.inventory
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.hotbar
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.armor
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.offhand
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.enderchest
data remove block -30000000 0 1600 RecordItem.tag.ensconcer.modifyinv.whole_inventory
function ensconcer:clear_shulker_box