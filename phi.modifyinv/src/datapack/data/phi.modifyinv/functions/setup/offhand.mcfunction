function phi.core:clear_shulker_box

# Reset list:
data modify block -30000000 0 1600 RecordItem.tag.phi.modifyinv.offhand set value []

data modify block -30000000 0 1600 RecordItem.tag.phi.modifyinv.offhand append from entity @s Inventory[{Slot:-106b}]
data modify block -30000000 0 1600 RecordItem.tag.phi.modifyinv.offhand[0].Slot set value 0b
data modify block -30000000 0 1602 Items set from block -30000000 0 1600 RecordItem.tag.phi.modifyinv.offhand