execute as @a[gamemode=survival] run execute unless score @s player_in_game matches 1 run scoreboard players set @s spec 1
gamemode spectator @a[scores={spec=1}]
team join Spectateur @a[scores={spec=1}]
scoreboard players remove @a[scores={spec=1}] spec 1