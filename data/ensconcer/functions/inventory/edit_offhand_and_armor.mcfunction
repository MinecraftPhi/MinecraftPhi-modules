# save previous inventory section
drop entity @s inventory.18 mine 654321 0 654322 minecraft:golden_pickaxe{drop_contents:true}

# update slot numbers
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[{Slot:-106b}].Slot set value 0b
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[{Slot:100b}].Slot set value 1b
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[{Slot:101b}].Slot set value 2b
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[{Slot:102b}].Slot set value 3b
data modify block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[{Slot:103b}].Slot set value 4b

# copy from jukebox to shulker
data modify block 654321 0 654322 Items set from block 654321 0 654321 RecordItem.tag.ensconcer.Inventory