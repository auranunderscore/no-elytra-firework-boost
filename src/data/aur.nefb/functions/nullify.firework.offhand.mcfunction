say get!

# get current firework flight value from offhand, store it in "firework.flight.incoming" as a "clipboard"
execute as @s store result storage aur.nefb:firework.flight.incoming.offhand Flight byte 1 run data get entity @s Inventory[{Slot:-106b}].tag.Fireworks.Flight

# move flight value from "firework.flight.incoming" to "aur.nefb.flight", set actual firework flight value to -128b, and mark as nullified firework using item modifier
item modify entity @s weapon.offhand aur.nefb:nullify.firework.offhand
