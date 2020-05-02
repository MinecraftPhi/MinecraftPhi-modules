execute if block ~ ~-1 ~ minecraft:hopper run function phi.crafter:internal/hopper

# Copy chest to storage, to avoid excess NBT serialisations
data modify storage phi:crafter inventory set from block ~ ~ ~ Items
# If the number of UI items is not the expected number recover any items that were put in the place of the UI items
execute store result score $phi.crafter.numUIItems phitemp run data get storage phi:crafter inventory[{tag:{phi:{crafter:{ui:1b}}}}]
execute unless score $phi.crafter.numUIItems phitemp matches 17 run function phi.crafter:internal/recover_items