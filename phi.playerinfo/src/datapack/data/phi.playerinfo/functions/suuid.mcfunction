function phi.playerinfo:store_head
data remove storage phi.playerinfo:temp suuid
data modify storage phi.playerinfo:temp suuid set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner.Id