function ensconcer:playerinfo/store_head
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.playerinfo set value {}
data modify block -30000000 0 1600 RecordItem.tag.ensconcer.playerinfo.name set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner.Name