execute as @s at @s run summon area_effect_cloud ~ ~2 ~ {Tags:["tp"],Duration:100}

execute as @s at @s run setblock ~ ~ ~ minecraft:end_gateway{ExactTeleport:1b,Age:51030L}
execute as @s at @s store result block ~ ~ ~ ExitPortal.X double 1 run scoreboard players get @e[distance=0,limit=1] TpX
execute as @s at @s store result block ~ ~ ~ ExitPortal.Y double 1 run scoreboard players get @e[distance=0,limit=1] TpY
execute as @s at @s store result block ~ ~ ~ ExitPortal.Z double 1 run scoreboard players get @e[distance=0,limit=1] TpZ




