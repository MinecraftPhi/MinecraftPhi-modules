function phi.playerinfo:store_head
data modify storage phi.playerinfo:temp SkullOwner set from block -30000000 0 1602 Items[{Slot:0b}].tag.SkullOwner
data modify storage phi.playerinfo:temp name set from storage phi.playerinfo:temp SkullOwner.Name
data modify storage phi.playerinfo:temp suuid set from storage phi.playerinfo:temp SkullOwner.Id