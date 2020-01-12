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

execute as @s at @s run function uhc:tp/tp