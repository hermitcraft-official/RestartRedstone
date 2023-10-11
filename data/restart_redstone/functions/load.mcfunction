scoreboard objectives add restart_redstone trigger

scoreboard players set #hasRun restart_redstone 0

schedule function restart_redstone:second 1s