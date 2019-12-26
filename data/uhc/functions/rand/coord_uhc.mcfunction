function uhc:rand/rand
scoreboard players set Buffer Global 0

scoreboard players operation Rand1 Global = Rand Global
execute if score Rand Global > SizeMap Global run scoreboard players operation Buffer Global -= Rand Global
execute if score Rand Global > SizeMap Global run scoreboard players operation Buffer Global /= #2 Global
execute if score Rand Global < SizeMap Global run scoreboard players operation Buffer Global = Rand Global

scoreboard players operation TpX Global = Buffer Global
scoreboard players operation TpX Global += SpawnX Global




function uhc:rand/rand
scoreboard players set Buffer Global 0


execute if score Rand Global > SizeMap Global run scoreboard players operation Buffer Global -= Rand Global
execute if score Rand Global > SizeMap Global run scoreboard players operation Buffer Global /= #2 Global
execute if score Rand Global < SizeMap Global run scoreboard players operation Buffer Global = Rand Global


scoreboard players operation TpZ Global = Buffer Global
scoreboard players operation TpZ Global += SpawnZ Global
