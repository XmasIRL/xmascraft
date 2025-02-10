
# execute if entity @s[family=player] run inputpermission set @s camera disabled
execute if entity @s[family=player] run inputpermission set @s movement disabled

execute unless entity @s[family=player] run effect @s slowness 1 255 true
effect @s weakness 1 255 true

scoreboard players operation a x.fx.freeze = @s x.fx.freeze
scoreboard players set b x.fx.freeze 15
scoreboard players operation a x.fx.freeze %= b x.fx.freeze

execute if score a x.fx.freeze matches 0 run damage @s 1 freezing
scoreboard players reset a
scoreboard players reset b

particle x:freeze_mist ~ ~ ~
scoreboard players remove @s x.fx.freeze 1

execute if entity @s[tag=x.is.on_fire] run scoreboard players set @s x.fx.freeze 0

# execute if score @s fx.freeze matches ..0 if entity @s[family=player] run inputpermission set @s camera enabled
execute if score @s x.fx.freeze matches ..0 if entity @s[family=player] run inputpermission set @s movement enabled
execute if score @s x.fx.freeze matches ..0 run scoreboard players reset @s x.fx.freeze