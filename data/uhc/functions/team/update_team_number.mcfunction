execute store result score white last_number_team run scoreboard players get white number_in_team
execute store result score orange last_number_team run scoreboard players get orange number_in_team
execute store result score magenta last_number_team run scoreboard players get magenta number_in_team
execute store result score light_blue last_number_team run scoreboard players get light_blue number_in_team
execute store result score yellow last_number_team run scoreboard players get yellow number_in_team
execute store result score green last_number_team run scoreboard players get green number_in_team
execute store result score pink last_number_team run scoreboard players get pink number_in_team
execute store result score dark_gray last_number_team run scoreboard players get dark_gray number_in_team
execute store result score gray last_number_team run scoreboard players get gray number_in_team
execute store result score cyan last_number_team run scoreboard players get cyan number_in_team
execute store result score purple last_number_team run scoreboard players get purple number_in_team
execute store result score dark_blue last_number_team run scoreboard players get dark_blue number_in_team
execute store result score dark_green last_number_team run scoreboard players get dark_green number_in_team
execute store result score red last_number_team run scoreboard players get red number_in_team

execute store result score white number_in_team run team list white
execute store result score orange number_in_team run team list orange 
execute store result score magenta number_in_team run team list magenta 
execute store result score light_blue number_in_team run team list light_blue 
execute store result score yellow number_in_team run team list yellow 
execute store result score green number_in_team run team list green 
execute store result score pink number_in_team run team list pink 
execute store result score dark_gray number_in_team run team list dark_gray 
execute store result score gray number_in_team run team list gray 
execute store result score cyan number_in_team run team list cyan 
execute store result score purple number_in_team run team list purple 
execute store result score dark_blue number_in_team run team list dark_blue 
execute store result score dark_green number_in_team run team list dark_green 
execute store result score red number_in_team run team list red 
scoreboard players set min number_in_team 0

execute store success score white team run team list white
execute store success score orange team run team list orange 
execute store success score magenta team run team list magenta 
execute store success score light_blue team run team list light_blue 
execute store success score yellow team run team list yellow 
execute store success score green team run team list green 
execute store success score pink team run team list pink 
execute store success score dark_gray team run team list dark_gray 
execute store success score gray team run team list gray 
execute store success score cyan team run team list cyan 
execute store success score purple team run team list purple 
execute store success score dark_blue team run team list dark_blue 
execute store success score dark_green team run team list dark_green 
execute store success score red team run team list red 

execute store result score last_team info run scoreboard players get team info
scoreboard players set team info 0
execute if score white team matches 1 run execute if score white number_in_team > min number_in_team run scoreboard players add team info 1
execute if score orange team matches 1 run execute if score orange number_in_team > min number_in_team run scoreboard players add team info 1
execute if score magenta team matches 1 run execute if score magenta number_in_team > min number_in_team run scoreboard players add team info 1
execute if score light_blue team matches 1 run execute if score light_blue number_in_team > min number_in_team run scoreboard players add team info 1
execute if score yellow team matches 1 run execute if score yellow number_in_team > min number_in_team run scoreboard players add team info 1
execute if score green team matches 1 run execute if score green number_in_team > min number_in_team run scoreboard players add team info 1
execute if score pink team matches 1 run execute if score pink number_in_team > min number_in_team run scoreboard players add team info 1
execute if score dark_dray team matches 1 run execute if score dark_dray number_in_team > min number_in_team run scoreboard players add team info 1
execute if score gray team matches 1 run execute if score gray number_in_team > min number_in_team run scoreboard players add team info 1
execute if score cyan team matches 1 run execute if score cyan number_in_team > min number_in_team run scoreboard players add team info 1
execute if score purple team matches 1 run execute if score purple number_in_team > min number_in_team run scoreboard players add team info 1
execute if score dark_blue team matches 1 run execute if score dark_blue number_in_team > min number_in_team run scoreboard players add team info 1
execute if score dark_green team matches 1 run execute if score dark_green number_in_team > min number_in_team run scoreboard players add team info 1
execute if score red team matches 1 run execute if score red number_in_team > min number_in_team run scoreboard players add team info 1

execute if score team info < last_team info run playsound minecraft:entity.ender_dragon.hurt master @a 0 100 0 1 1 1

execute if score white number_in_team matches 0 run execute if score white last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "blanche", "color": "white", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score orange number_in_team matches 0 run execute if score orange last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "orange", "color": "gold", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score magenta number_in_team matches 0 run execute if score magenta last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "magenta", "color": "light_purple", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score light_blue number_in_team matches 0 run execute if score light_blue last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "bleue", "color": "blue", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score yellow number_in_team matches 0 run execute if score yellow last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "jaune", "color": "yellow", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score green number_in_team matches 0 run execute if score green last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "verte", "color": "green", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score pink number_in_team matches 0 run execute if score pink last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "rose", "color": "red", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score dark_gray number_in_team matches 0 run execute if score dark_gray last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "grise foncée", "color": "dark_gray", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score gray number_in_team matches 0 run execute if score gray last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "grise", "color": "gray", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score cyan number_in_team matches 0 run execute if score cyan last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "cyan", "color": "dark_aqua", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score purple number_in_team matches 0 run execute if score purple last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "violette", "color": "dark_purple", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score dark_blue number_in_team matches 0 run execute if score dark_blue last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "bleue foncée", "color": "dark_blue", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score dark_green number_in_team matches 0 run execute if score dark_green last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "verte foncée", "color": "dark_green", "bold": true}, {"text": " a perdu!", "color": "red"}]
execute if score red number_in_team matches 0 run execute if score red last_number_team > min team run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " L'équipe ", "color": "red"}, {"text": "rouge", "color": "dark_red", "bold": true}, {"text": " a perdu!", "color": "red"}]