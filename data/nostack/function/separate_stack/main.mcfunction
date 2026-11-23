# store stack
$item replace block 0 0 0 container.0 from entity @s $(slot)

# get count - 1 (player will already be holding one)
execute store result score #nostack.count nostack.int if items block 0 0 0 container.0 *
scoreboard players remove #nostack.count nostack.int 1

# set player and shulker item to 1 and make unstackable
$item modify entity @s $(slot) nostack:set_count_1
$item modify entity @s $(slot) nostack:set_unstackable
item modify block 0 0 0 container.0 nostack:set_count_1
item modify block 0 0 0 container.0 nostack:set_unstackable

# copy shulker to item display
loot replace entity f6af9695-6564-458c-a1cf-41c935ec2255 contents mine 0 0 0

# drop items
execute at @s run function nostack:separate_stack/loop