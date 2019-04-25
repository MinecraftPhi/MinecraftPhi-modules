execute store success score $phi.playerinfo.no_natural_head_drop phitemp run tag @s add phi.playerinfo.drop_head
loot give @s kill @s
execute if score $phi.playerinfo.no_natural_head_drop phitemp matches 1 run tag @s remove phi.playerinfo.drop_head