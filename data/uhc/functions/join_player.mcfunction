execute as @a[team=] run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"selector": "@a[team=]", "color": "gray", "bold": true}, {"text": " a rejoint la zone d'attente", "color": "gold"}]
tp @a[team=] 0 101 0
bossbar set time players @a[team=]
scoreboard players set @a[team=] Kill 0
scoreboard players set @a[team=] team_etat 0
gamemode adventure @a[team=]
tellraw @a[team=] [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"text": "Utilisez ", "color": "gold"}, {"keybind": "key.drop", "color": "red", "bold": true}, {"text": " pour interragir avec les items dans la hotbar!", "color": "gold"}]
team join Waiting @a[team=]