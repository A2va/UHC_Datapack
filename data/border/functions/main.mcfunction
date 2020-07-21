execute as @a at @s run function border:check_position

execute as @a if score @s PosX >= size Border run function border:give_wither
execute as @a if score @s PosZ >= size Border run function border:give_wither

execute as @a[tag=wither] if score @s PosX < size Border run function border:clear_wither
execute as @a[tag=wither] if score @s PosZ < size Border run function border:clear_wither