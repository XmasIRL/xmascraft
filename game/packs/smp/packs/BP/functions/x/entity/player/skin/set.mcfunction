
scoreboard players add @s x.skin 0

execute if score @s x.skin matches -1		run event entity @s x:skin.invisible

execute if score @s x.skin matches 0		run function x/entity/player/skin/get_default

execute if score @s x.skin matches 1		run event entity @s x:skin.xmas
execute if score @s x.skin matches 2		run event entity @s x:skin.yuzu
execute if score @s x.skin matches 3		run event entity @s x:skin.yuzu.glowing
execute if score @s x.skin matches 4		run event entity @s x:skin.wiz
execute if score @s x.skin matches 5		run event entity @s x:skin.slumpy
execute if score @s x.skin matches 6		run event entity @s x:skin.kate
execute if score @s x.skin matches 7		run event entity @s x:skin.mic
execute if score @s x.skin matches 8		run event entity @s x:skin.kate.snow
execute if score @s x.skin matches 9		run event entity @s x:skin.yeyinde
execute if score @s x.skin matches 10		run event entity @s x:skin.gray
execute if score @s x.skin matches 11		run event entity @s x:skin.power
execute if score @s x.skin matches 12		run event entity @s x:skin.taptap
execute if score @s x.skin matches 13		run event entity @s x:skin.j
execute if score @s x.skin matches 14		run event entity @s x:skin.power.infected1
execute if score @s x.skin matches 15		run event entity @s x:skin.virgo
execute if score @s x.skin matches 16		run event entity @s x:skin.kate.sunrise
execute if score @s x.skin matches 17		run event entity @s x:skin.power.infected2
execute if score @s x.skin matches 18		run event entity @s x:skin.power.infected3
execute if score @s x.skin matches 19		run event entity @s x:skin.power.winter
execute if score @s x.skin matches 20		run event entity @s x:skin.power.super
execute if score @s x.skin matches 21		run event entity @s x:skin.ominous
execute if score @s x.skin matches 22		run event entity @s x:skin.bob
execute if score @s x.skin matches 23		run event entity @s x:skin.astro
execute if score @s x.skin matches 24		run event entity @s x:skin.moo
execute if score @s x.skin matches 25		run event entity @s x:skin.cheezy
execute if score @s x.skin matches 26		run event entity @s x:skin.cheezy.formal
execute if score @s x.skin matches 27		run event entity @s x:skin.kate.formal
execute if score @s x.skin matches 28		run event entity @s x:skin.power.formal
execute if score @s x.skin matches 29		run event entity @s x:skin.moo.faceless
execute if score @s x.skin matches 30		run event entity @s x:skin.enderman
execute if score @s x.skin matches 31		run event entity @s x:skin.yeyinde.alien
execute if score @s x.skin matches 32		run event entity @s x:skin.power.date