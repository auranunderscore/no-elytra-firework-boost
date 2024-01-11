# get stored firework flight value from mainhand, store it in "firework.flight.outgoing" as a "clipboard"
execute as @s store result storage aur.nefb:firework.flight.outgoing.mainhand Flight byte 1 run data get entity @s SelectedItem.tag.aur.nefb.flight

# move flight value from "firework.flight.outgoing" to "Fireworks.Flight" using item modifier and mark as non-nullified firework using item modifier
item modify entity @s weapon.mainhand aur.nefb:restore.firework.mainhand
