# A executer quand la partie n'est pas lancée
execute if score inGame info matches 0 run function uhc:join_player
execute if score inGame info matches 0 run function uhc:option
execute if score inGame info matches 0 run function uhc:team/detect_team
execute if score inGame info matches 0 run effect give @a minecraft:resistance 1 100 true
execute if score inGame info matches 0 run effect give @a minecraft:saturation 1 150 true

# A executer quand la partie est lancée
execute if score inGame info matches 1 run function uhc:time
execute if score inGame info matches 1 run function uhc:death
execute if score inGame info matches 1 run function uhc:title
execute if score inGame info matches 1 run function uhc:spec_in_game

# Toujours activer
