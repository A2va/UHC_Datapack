tag @s add tp
execute if entity @s[type=player] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tp_entity"],Invisible:1b,Marker:1b}
execute if entity @s[type=player] as @e[tag=tp_entity,limit=1,distance=1] run function uhc:tp/tp_player
execute if entity @s[type=!player] store result entity @s Pos[0] double 1 run scoreboard players add @s TpX 0
execute if entity @s[type=!player] store result entity @s Pos[1] double 1 run scoreboard players add @s TpY 0
execute if entity @s[type=!player] store result entity @s Pos[2] double 1 run scoreboard players add @s TpZ 0
tag @s remove tp