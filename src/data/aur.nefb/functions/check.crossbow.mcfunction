# store null value of firework in crossbow into storage
execute store result storage aur.nefb:crossbow.firework.data null0 byte 1 run data get entity @s SelectedItem.tag.ChargedProjectiles[0].tag.aur.nefb.null

# check storage, if null in storage = 1b, then fix crossbow
execute if data storage aur.nefb:crossbow.firework.data {null0:1b} run function aur.nefb:fix.crossbow.slot.0

# iterate for the other two projectiles, to account for multishot
execute if data entity @s SelectedItem.tag.ChargedProjectiles[1] run function aur.nefb:check.crossbow.slot.1
execute if data entity @s SelectedItem.tag.ChargedProjectiles[2] run function aur.nefb:check.crossbow.slot.2
