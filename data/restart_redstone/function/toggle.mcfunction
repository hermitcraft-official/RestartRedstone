scoreboard players set @s restart_redstone 0

execute positioned ~ ~-1 ~ align xyz if entity @e[type=item_display,tag=restart_redstone,dx=0] run scoreboard players set @s restart_redstone 1

execute if score @s restart_redstone matches 0 positioned ~ ~-1 ~ align xyz run function restart_redstone:setup
execute if score @s restart_redstone matches 1 positioned ~ ~-1 ~ align xyz run function restart_redstone:remove

scoreboard players set @s restart_redstone 0