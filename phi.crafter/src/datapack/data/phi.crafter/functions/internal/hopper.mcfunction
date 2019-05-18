data remove block ~ ~-1 ~ Items[{tag:{phi:{crafter:{ui:1b}}}}]
execute store result score $phi.crafter.hopperCooldown phitemp run data get block ~ ~-1 ~ TransferCooldown
execute store success score $phi.crafter.hopperNotEmpty phitemp if data block ~ ~-1 ~ Items[]
execute if score $phi.crafter.hopperNotEmpty phitemp matches 0 if score $phi.crafter.hopperCooldown phitemp matches ..2 run function phi.crafter:internal/hopper/lock
execute if score $phi.crafter.hopperNotEmpty phitemp matches 1 if score $phi.crafter.hopperCooldown phitemp matches ..2 run function phi.crafter:internal/hopper/unlock