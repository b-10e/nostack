advancement revoke @s only nostack:inventory_change

# set any 1 count items to be unstackable
item modify entity @s nostack:inventory nostack:set_unstackable

# if player still holding stacks, separate
execute unless predicate nostack:holding_stack run return fail

# summon item display used to temporarily hold stacks
execute at @s run summon minecraft:item_display ~ ~ ~ { \
    UUID:[I; -156264811, 1701070220, -1580252727, 904667733], \
}

execute if predicate nostack:hotbar_stack in nostack:io run function nostack:hotbar
execute if predicate nostack:inventory_stack in nostack:io run function nostack:inventory
execute if predicate nostack:cursor_stack in nostack:io run function nostack:cursor
execute if predicate nostack:offhand_stack in nostack:io run function nostack:offhand

# delete item display
kill f6af9695-6564-458c-a1cf-41c935ec2255