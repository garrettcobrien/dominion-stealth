#
#   function raycasting:hit_entity
#   @parent raycasting:ray
#
#
execute at @s as @e[tag=guard,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
scoreboard players set #hit temp 1
execute if score #distance temp matches 1..50 run scoreboard players add @s guardtime 2
execute if score #distance temp matches 51..100 run scoreboard players add @s guardtime 1
scoreboard players set @s guarddelay 60
execute if score @s guardtime matches 45.. run function raycasting:detected
