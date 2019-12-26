# Duree d'un episode
execute store result score minute info run scoreboard players get dureeEp option
scoreboard players set maxBar info 60
scoreboard players operation maxBar info *= dureeEp option
execute store result score globalSec info run scoreboard players get maxBar info
execute store result bossbar time max run scoreboard players get maxBar info
execute store result bossbar time value run scoreboard players get maxBar info
bossbar set time name [{"text": "Episode ", "color": "gold"}, {"score": {"name": "episode", "objective": "info"}, "color": "red", "bold": true}, {"text": " - ", "color": "gold"}, {"score": {"name": "minute", "objective": "info"}, "color": "red", "bold": true}, {"text": ":0", "color": "red", "bold": true}, {"score": {"name": "seconde", "objective": "info"}, "color": "red", "bold": true}]