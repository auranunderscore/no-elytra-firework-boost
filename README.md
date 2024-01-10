# no-elytra-firework-boost
Minecraft datapack to functionally disable boosting elytra flight with fireworks.

What follows is a poorly written explanation of how this datapack functions, copied from messages sent to the Minecraft Commands Discord server. I'll write more proper documentation at some point probably.

the way I go about implementing the functionality currently is storing the value of the fireworks flight tag in a scoreboard if a player is holding a firework rocket (using a predicate), so that they can exist on a per-player basis. there's four scoreboards, each being either for the mainhand or offhand and either the current value or the "stored" value, which only stores the value if the current value is 1 or above. the reason I have separate scoreboards for the mainhand and offhand is in case the player has two different sets of fireworks for some reason, one in each hand. as such, the mainhand and offhand logic are functionally completely separate and independent, but near-identical.

if a player if flying (detected using a predicate as well) and holding a firework in the mainhand or offhand, that firework item has its data modified with an item modifier to set the flight value to -128b, and adds a tag to the player. I initially had it so that only players without this tag would have their item modified, but that would make it easy to circumvent the disabling by just switching to another set of rockets.

once a player with the tag is no longer flying, the storage scoreboard for the respective slot is checked, and the firework item is modified so that the flight value is either 1b, 2b, or 3b, using separate item modifiers based on the score (which SHOULD be the same as the firework before it was modified.), and removes the tag.

# current issues:

* if you remove the firework from your mainhand/offhand while midflight (be it via dropping, deselecting, or moving elsewhere in the inventory), then land, the firework value is not restored
* if you switch the firework from the mainhand to the offhand or vice-versa while midflight, then land, the firework value is either not restored, or restored incorrectly
* it doesn't work with firework values lesser than 1 or greater than 3 (not a problem in survival minecraft currently, but a way to support any value could prove useful for mapmakers)
* generally poor optimization, i think
* functionally disables loading up a firework crossbow shot midfight
* functionally disables using a firework on the ground midflight
