
tag @a add x.check.if.dead
tag @e[type=player] remove x.check.if.dead
execute as @a[tag=x.check.if.dead,tag=!x.is.dead] at @s run function x/entity/common/health/on.death
execute as @a[tag=!x.check.if.dead,tag=x.is.dead] at @s run function x/entity/common/health/on.respawn
tag @a remove x.check.if.dead

execute as @e[scores={x.fx.freeze=1..}] at @s run function x/entity/common/effects/freeze/main
execute as @a[scores={x.cd.interact=1..}] at @s run function x/entity/player/interact/main