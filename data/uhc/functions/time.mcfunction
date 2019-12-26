scoreboard players remove tick info 1

# Mise a jour secondes
execute if score tick info matches -1 run scoreboard players remove seconde info 1
execute if score tick info matches -1 run scoreboard players remove globalSec info 1
execute if score tick info matches -1 run scoreboard players set tick info 20

# Mise a jour minutes
execute if score seconde info matches -1 run scoreboard players remove minute info 1
execute if score seconde info matches -1 run scoreboard players set seconde info 59

# Fin de l'épisode
execute if score minute info matches -1 run function uhc:time/fin_ep

# Mise a jour de la barre de boss
execute if score seconde info matches 0..9 run bossbar set time name [{"text": "Episode ", "color": "gold"}, {"score": {"name": "episode", "objective": "info"}, "color": "red", "bold": true}, {"text": " - ", "color": "gold"}, {"score": {"name": "minute", "objective": "info"}, "color": "red", "bold": true}, {"text": ":0", "color": "red", "bold": true}, {"score": {"name": "seconde", "objective": "info"}, "color": "red", "bold": true}]
execute if score seconde info matches 10..60 run bossbar set time name [{"text": "Episode ", "color": "gold"}, {"score": {"name": "episode", "objective": "info"}, "color": "red", "bold": true}, {"text": " - ", "color": "gold"}, {"score": {"name": "minute", "objective": "info"}, "color": "red", "bold": true}, {"text": ":", "color": "red", "bold": true}, {"score": {"name": "seconde", "objective": "info"}, "color": "red", "bold": true}]
execute store result bossbar time value run scoreboard players get globalSec info