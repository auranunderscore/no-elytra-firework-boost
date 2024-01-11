# store null value of charged shot 2 into storage
execute store result storage aur.nefb:crossbow.firework.data null2 byte 1 run data get entity @s SelectedItem.tag.ChargedProjectiles[2].tag.aur.nefb.null

# if null value = 1, fix crossbow slot 2
execute if data storage aur.nefb:crossbow.firework.data {null2:1b} run function aur.nefb:fix.crossbow.slot.2

