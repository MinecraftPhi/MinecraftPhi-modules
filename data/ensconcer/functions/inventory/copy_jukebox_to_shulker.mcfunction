# clear shulker box
data modify block 654321 0 654322 Items set value []

# copy inventory to shulker box for editing and remove appropriate slots from temporary inventory
function ensconcer:inventory/copy_jukebox_to_shulker/step