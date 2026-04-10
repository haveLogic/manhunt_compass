execute as @p[team=speed_runner] at @s if dimension overworld run data merge storage runner:pos {dimension:"overworld"}
execute as @p[team=speed_runner] at @s if dimension the_nether run data merge storage runner:pos {dimension:"the_nether"}
execute as @p[team=speed_runner] at @s if dimension the_end run data merge storage runner:pos {dimension:"the_end"}

data modify storage runner:pos xyz set value [0,0,0]

execute store result storage runner:pos xyz[0] int 1 run data get entity @p[team=speed_runner] Pos[0]
execute store result storage runner:pos xyz[1] int 1 run data get entity @p[team=speed_runner] Pos[1]
execute store result storage runner:pos xyz[2] int 1 run data get entity @p[team=speed_runner] Pos[2]