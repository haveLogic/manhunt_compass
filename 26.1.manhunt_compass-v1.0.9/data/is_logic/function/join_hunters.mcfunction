team join hunters
scoreboard players set @s join_hunters 0

attribute @s minecraft:waypoint_receive_range base reset
attribute @s minecraft:waypoint_transmit_range base reset

execute as @a[team=hunters] store success score @s compass_score run clear @s compass[custom_name="追踪指南针(手持更新)"] 0
execute as @a[team=hunters,scores={compass_score=0}] run give @s compass[enchantments={vanishing_curse:1},custom_name="追踪指南针(手持更新)"]
scoreboard players reset @a[team=hunters] compass_score