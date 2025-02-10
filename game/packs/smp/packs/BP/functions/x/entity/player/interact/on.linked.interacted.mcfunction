
tag @s add x.temp.interacted
execute as @p[tag=x.temp.interactor] at @s run function x/entity/player/interact/on.linked.interactor
tag @s remove x.temp.interacted