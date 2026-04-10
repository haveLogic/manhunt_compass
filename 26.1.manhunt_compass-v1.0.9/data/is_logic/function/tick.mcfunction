execute as @a[team=hunters] at @s if items entity @s weapon.mainhand compass[custom_name="追踪指南针(手持更新)"] \
run function is_logic:update_main_compass

execute as @a[team=hunters] at @s if items entity @s weapon.offhand compass[custom_name="追踪指南针(手持更新)"] \
run function is_logic:update_off_compass



scoreboard players enable @a join_hunters

execute if score #game start matches 0 run scoreboard players enable @a join_runner
execute if score #game start matches 1 run scoreboard players reset @a join_runner

scoreboard players enable @a spectator


execute as @a if score @s join_hunters matches 1 run function is_logic:join_hunters
execute as @a if score @s join_runner matches 1 run function is_logic:join_runner
execute as @a if score @s spectator matches 1 run function is_logic:spectator


execute as @a at @s if score #game start matches 0 run attribute @s block_interaction_range base set 0
execute as @a at @s if score #game start matches 0 run attribute @s entity_interaction_range base set 0


execute as @a at @s if score #game start matches 1 run attribute @s block_interaction_range base reset
execute as @a at @s if score #game start matches 1 run attribute @s entity_interaction_range base reset


execute as @a[team=speed_runner,scores={health=0}] run function is_logic:join_hunters
execute as @a[team=hunters,scores={health=0}] run function is_logic:join_hunters