execute as @a at @s run function border:check_position

execute as @a if score @s PosX >= XMax Global run function border:give_wither
execute as @a if score @s PosZ >= ZMax Global run function border:give_wither

execute as @a[tag=wither] if score @s PosX < XMax Global run function border:clear_wither
execute as @a[tag=wither] if score @s PosZ < ZMax Global run function border:clear_wither

execute as @a if score @s PosX >= @s Max_Border_x run function border:display_border
execute as @a if score @s PosX <= @s Min_Border_x run function border:display_border
execute as @a if score @s PosZ <= @s Max_Border_z run function border:display_border
execute as @a if score @s PosZ <= @s Min_Border_z run function border:display_border