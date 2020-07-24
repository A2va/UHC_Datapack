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