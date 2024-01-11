# get current firework flight value from mainhand, store it in "firework.flight.incoming" as a "clipboard"
execute as @s store result storage aur.nefb:firework.flight.incoming.mainhand Flight byte 1 run data get entity @s SelectedItem.tag.Fireworks.Flight

# move flight value from "firework.flight.incoming" to "aur.nefb.flight", set actual firework flight value to -128b, and mark as nullified firework using item modifier
item modify entity @s weapon.mainhand aur.nefb:nullify.firework.mainhand
