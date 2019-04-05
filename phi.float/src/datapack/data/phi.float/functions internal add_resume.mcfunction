data modify entity @s ArmorItems[0].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputA
data modify entity @s ArmorItems[1].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputB
data modify entity @s Health set value 1024f
data modify entity @s Attributes[0].Base set value 0d
data modify block -30000000 0 1600 RecordItem.tag.phi.float.output set value 0f
data modify block -30000000 0 1600 RecordItem.tag.phi.float.output set from entity @s Health
kill @s
