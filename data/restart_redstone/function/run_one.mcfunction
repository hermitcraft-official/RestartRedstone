tag @s add restart_redstone_active
forceload add ~ ~ ~ ~

setblock ~ ~ ~ redstone_block
schedule function restart_redstone:clear 1s