execute store result entity @s Pos[0] double 1 run scoreboard players add @p[tag=home_player] TpX 0
execute store result entity @s Pos[1] double 1 run scoreboard players add @p[tag=home_player] TpY 0
execute store result entity @s Pos[2] double 1 run scoreboard players add @p[tag=home_player] TpZ 0
execute at @s run tp @p[tag=tp] ~ ~ ~
kill @s