function uhc:rand/rand
scoreboard players set @s TpX 0

execute if score Rand Global > SizeMap Global run scoreboard players operation @s TpX -= Rand Global
execute if score Rand Global > SizeMap Global run scoreboard players operation @s TpX /= #2 Global
execute if score Rand Global <= SizeMap Global run scoreboard players operation @s TpX = Rand Global

scoreboard players operation @s TpX += SpawnX Global

function uhc:rand/rand
scoreboard players set @s TpZ 0


execute if score Rand Global > SizeMap Global run scoreboard players operation @s TpZ -= Rand Global
execute if score Rand Global > SizeMap Global run scoreboard players operation @s TpZ /= #2 Global
execute if score Rand Global <= SizeMap Global run scoreboard players operation @s TpZ = Rand Global

scoreboard players operation @s TpZ += SpawnZ Global

execute as @s at @s run summon area_effect_cloud ~ ~2 ~ {Tags:["tp"],Duration:100}

execute as @s at @s run setblock ~ ~ ~ minecraft:end_gateway{ExactTeleport:1b,Age:51030L}
execute as @s at @s store result block ~ ~ ~ ExitPortal.X double 1 run scoreboard players get @s TpX
execute as @s at @s store result block ~ ~ ~ ExitPortal.Y double 1 run scoreboard players get @s TpY
execute as @s at @s store result block ~ ~ ~ ExitPortal.Z double 1 run scoreboard players get @s TpZ



