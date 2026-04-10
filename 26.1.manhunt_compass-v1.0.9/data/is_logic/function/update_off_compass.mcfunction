execute if dimension overworld if data entity @p[team=speed_runner] {Dimension:"minecraft:overworld"} run \
function is_logic:set_off_compass with storage runner:pos

execute if dimension the_nether if data entity @p[team=speed_runner] {Dimension:"minecraft:the_nether"} run \
function is_logic:set_off_compass with storage runner:pos

execute if dimension the_end if data entity @p[team=speed_runner] {Dimension:"minecraft:the_end"} run \
function is_logic:set_off_compass with storage runner:pos


execute if dimension overworld if data storage temp:pos {dimension:"minecraft:overworld"} unless data entity @p[team=speed_runner] {Dimension:"minecraft:overworld"} run \
function is_logic:set_off_compass with storage temp:pos

execute if dimension the_nether if data storage temp:pos {dimension:"minecraft:the_nether"} unless data entity @p[team=speed_runner] {Dimension:"minecraft:the_nether"} run \
function is_logic:set_off_compass with storage temp:pos

execute if dimension the_end if data storage temp:pos {dimension:"minecraft:the_end"} unless data entity @p[team=speed_runner] {Dimension:"minecraft:the_end"} run \
function is_logic:set_off_compass with storage temp:pos