team join orange @a[scores={join_orange=1}]
execute as @a[scores={join_orange=1}] run tellraw @a [{"text":"[", "color": "red"}, {"text":"UHC", "color": "gold", "bold": "true"}, {"text":"] ", "color": "red"}, {"selector": "@a[scores={join_orange=1}]", "color": "gold", "bold": true}, {"text": " a rejoind l'équipe ", "color": "gold"}, {"text": "orange", "color": "gold", "bold": true}]
execute as @a[scores={join_orange=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:orange_concrete"}},x=-10,y=100,z=-10,dx=20,dy=5,dz=20]
scoreboard players remove @a[scores={join_orange=1}] join_orange 1