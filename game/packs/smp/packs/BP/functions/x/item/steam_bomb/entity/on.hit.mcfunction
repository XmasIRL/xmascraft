
playsound random.explode @a ~~~ 1 1.2
particle x:steam_bomb ~ ~ ~

execute positioned ~~-1~ run effect @e[r=8] levitation 6 2 true
execute positioned ~~8~ run effect @e[r=6] slow_falling 10 8 true

execute as @e[r=6,family=mob] at @s if score @s x.fx.freeze matches 1.. run scoreboard players set @s x.fx.freeze 1
execute as @e[r=6,family=player] at @s if score @s x.fx.freeze matches 1.. run scoreboard players set @s x.fx.freeze 1

event entity @s x:explode