execute as @s at @s run gamemode spectator @a
execute as @s at @s run tp @a ~ ~ ~

execute as @s at @s run gamemode adventure @a

execute as @s at @s run setworldspawn ~ ~1 ~ 
execute as @s at @s run worldborder center ~ ~

execute as @s at @s store result score SpawnX Global run data get entity @s Pos[0]
execute as @s at @s store result score SpawnZ Global run data get entity @s Pos[2]

# Ajout de l'UHC Armor Stand
execute as @s at @s run kill @e[name=UHC,type=minecraft:armor_stand]
execute as @s at @s run kill @e[type=area_effect_cloud,tag=coin]
execute as @s at @s run summon armor_stand ~ ~0.8 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"UHC\",\"color\":\"red\",\"bold\":\"true\"}",CustomNameVisible:1b,DisabledSlots:2035728}
execute as @e[type=armor_stand,name=UHC] at @s positioned ~10 ~ ~10 run summon area_effect_cloud ~ ~ ~ {Tags:["coin"],Duration:2147483647}

execute as @e[type=area_effect_cloud,tag=coin] at @s run fill ~ ~ ~ ~-20 ~5 ~-20 minecraft:barrier
execute as @e[type=area_effect_cloud,tag=coin] at @s positioned ~-1 ~1 ~-1 run fill ~ ~ ~ ~-18 ~4 ~-18 minecraft:air
execute as @e[type=area_effect_cloud,tag=coin] at @s positioned ~-1 ~ ~-1 run fill ~ ~ ~ ~-18 ~ ~-18 minecraft:light_blue_concrete
execute as @e[type=area_effect_cloud,tag=coin] at @s positioned ~-2 ~ ~-2 run fill ~ ~ ~ ~-16 ~ ~-16 minecraft:light_blue_stained_glass

# Delete spawn

#execute as @e[type=area_effect_cloud,tag=coin] at @s run fill ~ ~ ~ ~-20 ~5 ~-20 minecraft:air
#kill @e[name=UHC,type=minecraft:armor_stand]
#kill @e[type=area_effect_cloud,tag=coin]

