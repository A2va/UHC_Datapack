execute as @a[scores={Mort=1}] run playsound minecraft:entity.wither.spawn master @a 0 100 0 1 1 1
team leave @a[scores={Mort=1}]
execute as @a[scores={Mort=1}] run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"selector": "@a[scores={Mort=1}]", "color": "gray", "bold": true}, {"text": " est mort!"}]
execute as @a[scores={Mort=1}] run scoreboard players remove player info 1
execute as @a[scores={Mort=1}] run function uhc:team/update_team_number
gamemode spectator @a[scores={Mort=1}]
team join Spectateur @a[scores={Mort=1}]
scoreboard players remove @a[scores={Mort=1}] Mort 1

give @a[scores={killDetect=1}] minecraft:golden_apple 1
#execute as @a[scores={killDetect=1}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:1b}}
scoreboard players remove @a[scores={killDetect=1}] killDetect 1