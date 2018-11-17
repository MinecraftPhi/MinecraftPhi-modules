# Check whether slot number matches a hotbar slot:
execute if score $ensconcer.modifyinv.slot temp matches 0..8 run function ensconcer:modifyinv/setup/whole_inventory/found_hotbar