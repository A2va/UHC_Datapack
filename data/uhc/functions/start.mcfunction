tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
scoreboard players set inGame info 1

# Add player to spec
execute if score team option matches 1 run scoreboard players set @a[team=Waiting] spec 1
gamemode spectator @a[scores={spec=1}]
team join Spectateur @a[scores={spec=1}]
scoreboard players remove @a[scores={spec=1}] spec 1

team empty Waiting
execute if score team option matches 0 as @a[gamemode=adventure] run function uhc:tp/spreadplayers
execute if score team option matches 1 run say "Not impltented yet"
#execute if score team option matches 0 run spreadplayers 0 0 200 500 false @a[gamemode=adventure]
#execute if score team option matches 1 run spreadplayers 0 0 200 500 true @a[gamemode=adventure]
gamemode survival @a[gamemode=adventure]
playsound minecraft:entity.enderman.teleport master @a 0 100 0 1 1 1
effect give @a minecraft:resistance 20 125 true
effect give @a[gamemode=survival] minecraft:blindness 3 125 true
tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": true}, {"text":"]", "color": "red"}, {"text": " Démarage de la partie! Puisse le sort vous être favorable!", "color": "gold"}]
clear @a

scoreboard objectives remove join_white
scoreboard objectives remove join_orange
scoreboard objectives remove join_magenta
scoreboard objectives remove join_light_blue
scoreboard objectives remove join_yellow
scoreboard objectives remove join_green
scoreboard objectives remove join_pink
scoreboard objectives remove join_dark_gray
scoreboard objectives remove join_gray
scoreboard objectives remove join_cyan
scoreboard objectives remove join_purple
scoreboard objectives remove join_dark_blue
scoreboard objectives remove join_dark_green
scoreboard objectives remove join_red
scoreboard objectives remove next_team
scoreboard objectives remove last_team
scoreboard objectives remove trigger_spec
scoreboard objectives remove team_etat

bossbar set minecraft:time players @a

gamerule randomTickSpeed 9
difficulty hard

execute as @a[gamemode=survival] run scoreboard players add player info 1
function uhc:team/update_team_number

scoreboard players set @a Mort 0
scoreboard players set @a[gamemode=survival] player_in_game 1

gamerule doDaylightCycle true
time set 0
gamerule doWeatherCycle true

xp set @a 0 levels
xp set @a 0 