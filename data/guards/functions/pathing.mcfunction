#
#   function guards:initialblock
#   @parents guards:north,guards:south,guards:east,guards:west
#
## moving the guard along the path
function rng:range_lcg

execute as @e[type=minecraft:zombie,tag=patrol] at @s unless score @a[sort=nearest,limit=1] guardtime matches 1.. if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta unless entity @s[tag=stopped] run tp @s ^ ^ ^0.05


#execute as @e[type=minecraft:zombie,tag=patrol] at @s if score out math matches 10 unless entity @s[tag=stopped] run function guards:stopguard

execute as @e[type=minecraft:zombie,tag=patrol] at @s run execute as @p[gamemode=adventure] at @s run execute as @e[type=minecraft:zombie,tag=patrol,sort=random,limit=1] at @s if score out math matches 10 unless entity @s[tag=stopped] run function guards:stopguard

#execute align y as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tp @s ~ ~1 ~
#execute as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta unless entity @s[tag=stopped] run tp @s ^ ^ ^0.05
