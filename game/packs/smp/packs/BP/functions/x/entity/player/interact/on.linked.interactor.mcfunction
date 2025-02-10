
execute if entity @s[tag=x.is.sneaking] if entity @p[tag=x.temp.interacted,r=2] run ride @p[tag=x.temp.interacted,r=2] summon_rider x:seat
execute if entity @s[tag=x.is.sneaking] at @p[tag=x.temp.interacted,r=2] run tag @e[type=x:seat,c=1] add x.temp.seat
execute if entity @s[tag=x.is.sneaking] at @p[tag=x.temp.interacted,r=2] run ride @s start_riding @e[tag=x.temp.seat,c=1]
tag @e remove x.temp.seat