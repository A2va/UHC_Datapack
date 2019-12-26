scoreboard players set @a[scores={last_team=1}] team_etat 0
execute as @a[scores={last_team=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},x=-10,y=100,z=-10,dx=20,dy=5,dz=20]
scoreboard players remove @a[scores={last_team=1}] last_team 1