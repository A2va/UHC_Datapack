scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy


scoreboard objectives add Global dummy
scoreboard players set SpawnX Global 0
scoreboard players set SpawnZ Global 0
scoreboard players set Rand Global 0
scoreboard players set Buffer Global 0

scoreboard players set #1 Global 1
scoreboard players set #2 Global 2
scoreboard players set #10 Global 10

scoreboard players set SizeMap Global 1000
scoreboard players set SizeMap2 Global 0
scoreboard players set XMax Global 0
scoreboard players set XMin Global 0
scoreboard players set ZMax Global 0
scoreboard players set ZMin Global 0

scoreboard players set Max_Border_x Global 0
scoreboard players set Min_Border_x Global 0
scoreboard players set Max_Border_z Global 0
scoreboard players set Min_Border_z Global 0

scoreboard players operation SizeMap2 Global = SizeMap Global
scoreboard players operation SizeMap2 Global *= #2 Global
scoreboard players operation SizeMap2 Global += #1 Global

scoreboard players operation XMax Global = SizeMap Global
scoreboard players operation XMax Global += SpawnX Global

scoreboard players operation XMin Global = SizeMap Global
scoreboard players operation XMin Global -= SpawnX Global

scoreboard players operation ZMax Global = SizeMap Global
scoreboard players operation ZMax Global += SpawnX Global

scoreboard players operation ZMin Global = SizeMap Global
scoreboard players operation ZMin Global -= SpawnX Global

scoreboard players operation Max_Border_x Global = XMax Global
scoreboard players operation Max_Border_x Global -= #10 Global
scoreboard players operation Min_Border_x Global = XMax Global
scoreboard players operation Min_Border_x Global += #10 Global

scoreboard players operation Max_Border_z Global = ZMax Global
scoreboard players operation Max_Border_z Global -= #10 Global
scoreboard players operation Min_Border_z Global = ZMax Global
scoreboard players operation Min_Border_z Global += #10 Global



scoreboard players operation Min_Border_x Global = XMin Global
scoreboard players operation Border_z Global = ZMax Global
scoreboard players operation Border_z Global -= #10 Global