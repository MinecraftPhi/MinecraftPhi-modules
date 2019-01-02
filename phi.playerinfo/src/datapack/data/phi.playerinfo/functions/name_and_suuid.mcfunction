function phi.playerinfo:store_head
data modify block -30000000 0 1600 RecordItem.tag.phi.playerinfo set value {}
data modify block -30000000 0 1600 RecordItem.tag.phi.playerinfo.name set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner.Name
data modify block -30000000 0 1600 RecordItem.tag.phi.playerinfo.suuid set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner.Id