execute unless score whitelist restart_redstone.settings matches 0..2 run scoreboard players set whitelist restart_redstone.settings 0 

execute if score whitelist restart_redstone.settings matches 0 run return run function restart_redstone:config/render {label: "No Whitelist", desc: "Currently no checks for which blocks can be replaced.", new_value: 1}
execute if score whitelist restart_redstone.settings matches 1 run return run function restart_redstone:config/render {label: "Whitelist", desc: "Currently only specific blocks can be replaced.", new_value: 2}
execute if score whitelist restart_redstone.settings matches 2 run return run function restart_redstone:config/render {label: "Blacklist", desc: "Currently specific blocks cannot be replaced.", new_value: 0}
