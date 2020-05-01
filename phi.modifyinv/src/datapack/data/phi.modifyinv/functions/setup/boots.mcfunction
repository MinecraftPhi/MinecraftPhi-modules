function phi.core:clear_shulker_box

# Reset list:
data modify storage phi:modifyinv armor set value []

data modify storage phi:modifyinv armor append from entity @s Inventory[{Slot:100b}]
data modify storage phi:modifyinv armor[0].Slot set value 0b
data modify block -30000000 0 1602 Items set from storage phi:modifyinv armor