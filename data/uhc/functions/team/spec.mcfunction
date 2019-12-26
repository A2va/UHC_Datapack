gamemode spectator @a[scores={spec=1}]
execute as @a[scores={spec=1}] run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"selector": "@a[scores={spec=1}]", "color": "gray", "bold": true}, {"text": " est devenu un spéctateur", "color": "gold"}]
scoreboard players enable @a[scores={spec=1}] trigger_spec
tellraw @a[scores={spec=1}] [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"]", "color": "red"}, {"text": " Cliquez ", "color": "gold"}, {"text": "ICI", "color": "red", "bold": true, "clickEvent": {"action": "run_command", "value": "/trigger trigger_spec set 1"}, "hoverEvent":{"action": "show_text", "value": "Cliquez pour passer en joueur"}}, {"text": " pour passer en joueur!", "color": "gold"}]
team join Spectateur @a[scores={spec=1}]
execute as @a[scores={spec=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:heart_of_the_sea"}},x=-10,y=100,z=-10,dx=20,dy=5,dz=20]
scoreboard players remove @a[scores={spec=1}] spec 1