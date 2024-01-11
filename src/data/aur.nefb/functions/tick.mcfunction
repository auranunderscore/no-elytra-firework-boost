# adds custom firework tags to unaffected fireworks to allow item stacking
execute as @a if predicate aur.nefb:firework.mainhand unless data entity @s SelectedItem.tag.aur.nefb.null run item modify entity @s weapon.mainhand aur.nefb:initialize.firework.tags
execute as @a if predicate aur.nefb:firework.offhand unless data entity @s Inventory[{Slot:-106b}].tag.aur.nefb.null run item modify entity @s weapon.offhand aur.nefb:initialize.firework.tags

# nullify mainhand rocket if player is flying
execute as @a if predicate aur.nefb:isflying if predicate aur.nefb:firework.mainhand unless predicate aur.nefb:nullified.rocket.mainhand run function aur.nefb:nullify.firework.mainhand

# nullify offhand rocket if player is flying
execute as @a if predicate aur.nefb:isflying if predicate aur.nefb:firework.offhand unless predicate aur.nefb:nullified.rocket.offhand run function aur.nefb:nullify.firework.offhand

# restore mainhand rocket if player is not flying
execute as @a unless predicate aur.nefb:isflying if predicate aur.nefb:nullified.rocket.mainhand run function aur.nefb:restore.firework.mainhand

# restore offhand rocket if player is not flying
execute as @a unless predicate aur.nefb:isflying if predicate aur.nefb:nullified.rocket.offhand run function aur.nefb:restore.firework.offhand

# CROSSBOW FUNCTIONALITY
# detect if player holding crossbow has firework with tag aur.nefb.null = 1
execute as @a if predicate aur.nefb:holding.crossbow run function aur.nefb:check.crossbow
