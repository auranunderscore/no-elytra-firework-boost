# get current firework flight data for every player in mainhand
execute as @a if predicate aur.nefb:firework.mainhand store result score @a aur.nefb.fireworkflight.mainhand.current run data get entity @s SelectedItem.tag.Fireworks.Flight

# if value is over 0, put in storage scoreboard
execute as @a[scores={aur.nefb.fireworkflight.mainhand.current=1..}] if predicate aur.nefb:firework.mainhand store result score @s aur.nefb.fireworkflight.mainhand.storage run data get entity @s SelectedItem.tag.Fireworks.Flight

# same but for offhand
execute as @a if predicate aur.nefb:firework.offhand store result score @a aur.nefb.fireworkflight.offhand.current run data get entity @s Inventory[{Slot:-106b}].tag.Fireworks.Flight

execute as @a[scores={aur.nefb.fireworkflight.offhand.current=1..}] if predicate aur.nefb:firework.mainhand store result score @s aur.nefb.fireworkflight.offhand.storage run data get entity @s Inventory[{Slot:-106b}].tag.Fireworks.Flight

# nullify fireworks if flying

execute as @a if predicate aur.nefb:firework.offhand if predicate aur.nefb:isflying run function aur.nefb:nullify.offhand
execute as @a if predicate aur.nefb:firework.mainhand if predicate aur.nefb:isflying run function aur.nefb:nullify.mainhand

# restore fireworks once no longer flying

execute as @a[tag=aur.nefb.mainhand.modified] unless predicate aur.nefb:isflying run function aur.nefb:restore.mainhand
execute as @a[tag=aur.nefb.offhand.modified] unless predicate aur.nefb:isflying run function aur.nefb:restore.offhand
