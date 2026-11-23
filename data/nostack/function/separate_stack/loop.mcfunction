# spawn item
loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]}

# loop
scoreboard players remove #nostack.count nostack.int 1
execute if score #nostack.count nostack.int matches 1.. run function nostack:separate_stack/loop