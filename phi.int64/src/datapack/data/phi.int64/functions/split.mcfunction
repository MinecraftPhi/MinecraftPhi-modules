# Copy long to a place which can only hold ints. This gets just the low half
data modify entity ec-0-0-0-1 Color set from block -30000000 0 1600 RecordItem.tag.phi.int64.value
execute store result score $phi.int64.low temp run data get entity ec-0-0-0-1 Color

# Get high half by scaling down by 2^32
execute store result score $phi.int64.high temp run data get block -30000000 0 1600 RecordItem.tag.phi.int64.value 0.00000000023283064365386962890625