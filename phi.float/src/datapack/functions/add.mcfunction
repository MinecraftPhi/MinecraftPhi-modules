summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["J0SfmBoy"],Attributes:[{Name:"generic.maxHealth",Base:199999999999999999999999999999999999999d}],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.maxHealth", Amount:0.0, Operation:0, UUIDLeast:1, UUIDMost:1}]}},{id:"minecraft:stone",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.maxHealth", Amount:0.0, Operation:0, UUIDLeast:2, UUIDMost:1}]}}]}
data modify entity @e[limit=1,tag=J0SfmBoy] ArmorItems[0].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputA
data modify entity @e[limit=1,tag=J0SfmBoy] ArmorItems[1].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputB
data modify entity @e[limit=1,tag=J0SfmBoy] Health set value 1024f
data modify entity @e[limit=1,tag=J0SfmBoy] Attributes[0].Base set value 0d
data modify block -30000000 0 1600 RecordItem.tag.phi.float.output set value 0f
data modify block -30000000 0 1600 RecordItem.tag.phi.float.output set from entity @e[limit=1,tag=J0SfmBoy] Health
kill @e[limit=1,tag=J0SfmBoy]
