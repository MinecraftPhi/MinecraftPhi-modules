scoreboard players operation $ensconcer.slot workspace -= $ensconcer.minslot workspace
execute store result block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0].Slot byte 1 run scoreboard players get $ensconcer.slot workspace
data modify block 654321 0 654322 Items append from block 654321 0 654321 RecordItem.tag.ensconcer.Inventory[0]