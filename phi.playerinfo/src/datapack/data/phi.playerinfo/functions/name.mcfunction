function phi.playerinfo:store_head
data remove storage phi.playerinfo:temp name
data modify storage phi.playerinfo:temp name set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner.Name