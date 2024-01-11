# store null value of charged shot 1 into storage
execute store result storage aur.nefb:crossbow.firework.data null1 byte 1 run data get entity @s SelectedItem.tag.ChargedProjectiles[1].tag.aur.nefb.null

# if null value = 1, fix crossbow slot 1
execute if data storage aur.nefb:crossbow.firework.data {null1:1b} run function aur.nefb:fix.crossbow.slot.1

