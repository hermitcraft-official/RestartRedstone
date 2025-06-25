execute if score whitelist restart_redstone.settings matches 1 unless block ~ ~ ~ #restart_redstone:whitelist run return run title @s actionbar [{color: "red", text:"Cannot replace block: not on whitelist."}]
execute if score whitelist restart_redstone.settings matches 2 if block ~ ~ ~ #restart_redstone:blacklist run return run title @s actionbar [{color: "red", text:"Cannot replace block: on blacklist."}]

setblock ~ ~ ~ barrier destroy
summon item_display ~.5 ~.5 ~.5 {Tags:["restart_redstone"],item:{id:"minecraft:redstone_block",components:{"minecraft:custom_model_data":{strings: ["restart"]}}},transformation:[0.9999f,0.0000f,0.0000f,0.0000f,0.0000f,0.9999f,0.0000f,0.0000f,0.0000f,0.0000f,0.9999f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}