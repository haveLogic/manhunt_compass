gamerule fall_damage false
gamerule freeze_damage false
gamerule fire_damage false
gamerule drowning_damage false
time pause

team add speed_runner "速通者"
team add hunters "猎人"

team modify hunters color red

scoreboard objectives add compass_score dummy
scoreboard objectives add start dummy

scoreboard players set #game start 0

scoreboard objectives add join_hunters trigger {text:"加入猎人",color: "red"}
scoreboard objectives add join_runner trigger {text:"加入速通者"}
scoreboard objectives add spectator trigger {text:"旁观"}

scoreboard objectives add health health

function is_logic:update_pos