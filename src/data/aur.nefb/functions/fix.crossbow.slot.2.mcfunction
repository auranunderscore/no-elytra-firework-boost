# get stored flight data from firework in crossbow, copy to storage
execute store result storage aur.nefb:crossbow.firework.data flight2 byte 1 run data get entity @s SelectedItem.tag.ChargedProjectiles[2].tag.aur.nefb.flight

# copy nbt from storage to firework, using item modifier
item modify entity @s weapon.mainhand aur.nefb:fix.crossbow.slot.2
