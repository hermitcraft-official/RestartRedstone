schedule function restart_redstone:second 1s
scoreboard players enable @a restart_redstone

execute as @a[scores={restart_redstone=1..}] at @s run function restart_redstone:toggle
execute if score #hasRun restart_redstone matches 0 as @e[tag=restart_redstone,tag=restart_redstone_run] run tag @s remove restart_redstone_run