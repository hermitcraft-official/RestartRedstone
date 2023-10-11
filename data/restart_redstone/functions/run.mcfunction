# count the amount of loaded entities
execute store result score #needToRun restart_redstone if entity @e[tag=restart_redstone,tag=!restart_redstone_run,tag=!restart_redstone_active]
tellraw @a[tag=admin] [{"text": "Restart redstone running - ", "color": "gray", "italic":true}, {"score":{"name": "#needToRun","objective": "restart_redstone"}}, " remaining."]

execute as @e[tag=restart_redstone,tag=!restart_redstone_run,tag=!restart_redstone_active,limit=1] at @s run function restart_redstone:run_one

execute if score #needToRun restart_redstone matches 2.. run schedule function restart_redstone:run 2s

scoreboard players set #hasRun restart_redstone 1