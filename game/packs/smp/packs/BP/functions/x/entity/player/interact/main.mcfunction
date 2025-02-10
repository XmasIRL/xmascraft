
scoreboard players remove @s x.cd.interact 1

execute if entity @s[tag=x.temp.interacted] if entity @p[tag=x.temp.interactor] run function x/entity/player/interact/on.linked.interacted

execute unless score @s x.cd.interact matches 0.. run tag @s remove x.temp.interacted
execute unless score @s x.cd.interact matches 0.. run tag @s remove x.temp.interactor