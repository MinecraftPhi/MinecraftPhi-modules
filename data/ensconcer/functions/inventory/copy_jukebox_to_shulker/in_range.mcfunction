#tellraw @s ["slot: ", {"score":{"name":"$ensconcer.slot","objective":"workspace"}}, " minslot: ", {"score":{"name":"$encsoncer.minslot","objective":"workspace"}}]
scoreboard players operation $ensconcer.slot workspace -= $ensconcer.minslot workspace
execute store result block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0].Slot byte 1 run scoreboard players get $ensconcer.slot workspace
tellraw @s {"nbt":"RecordItem.tag.ensconcer.Inventory[0]","block":{"x":654321,"y":0,"z":654321}}
data modify block 654321 0 654322 Items append from block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0]