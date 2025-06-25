scoreboard objectives add restart_redstone trigger

scoreboard players set #hasRun restart_redstone 0

schedule function restart_redstone:second 1s

scoreboard objectives add restart_redstone.settings dummy

execute unless score whitelist restart_redstone.settings = whitelist restart_redstone.settings run scoreboard players set whitelist restart_redstone.settings 0