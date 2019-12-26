tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"text": "Fin de l'épisode ", "color": "gold"}, {"score": {"name": "episode", "objective":"info"}, "color": "red", "bold": true}]
scoreboard players add episode info 1
execute store result score globalSec info run scoreboard players get maxBar info
playsound minecraft:block.anvil.place master @a

# Mise a jour de la taille de la map
execute if score episode info = diminutionMap option run worldborder set 200 1200
execute if score episode info = diminutionMap option run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " Diminution de la map en 200x200 en 20 minutes!", "color": "gold"}]

execute store result score minute info run scoreboard players get dureeEp option
scoreboard players remove minute info 1