# Move inputs to usable positions for adding
data modify entity @s ArmorItems[0].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputA
data modify entity @s ArmorItems[1].tag.AttributeModifiers[0].Amount set from block -30000000 0 1600 RecordItem.tag.phi.float.inputB

# Since the health might have gone down, raise it back up
data modify entity @s Health set value 1024f

# If the stand died after stabiliser removal, 0 is used as the lower bound value
data modify block -30000000 0 1600 RecordItem.tag.phi.float.output set from entity @s Health

# For consistency, we kill the stand since it might have died anyway and not killing it is actually more of a hassle
kill @s
