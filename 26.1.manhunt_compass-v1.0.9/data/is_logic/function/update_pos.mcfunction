execute as @a[team=hunters] at @s if items entity @s weapon.mainhand compass[custom_name="追踪指南针(手持更新)"] run function is_logic:get_pos
execute as @a[team=hunters] at @s if items entity @s weapon.offhand compass[custom_name="追踪指南针(手持更新)"] run function is_logic:get_pos

schedule function is_logic:update_pos 0.5s replace