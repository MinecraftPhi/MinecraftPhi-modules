# Check whether slot number matches a hotbar slot:
execute if score $modifyinv.slot temp matches 0..8 run function ensconcer:modifyinv/setup_whole_inventory/found_hotbar