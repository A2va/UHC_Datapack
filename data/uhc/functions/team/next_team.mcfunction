scoreboard players set @a[scores={next_team=1}] team_etat 1
execute as @a[scores={next_team=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:white_banner"}},x=-10,y=100,z=-10,dx=20,dy=5,dz=20]
scoreboard players remove @a[scores={next_team=1}] next_team 1