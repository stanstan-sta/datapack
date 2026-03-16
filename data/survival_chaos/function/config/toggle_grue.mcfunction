execute if score #config_grue_enabled survival_chaos matches 1 run scoreboard players set #config_grue_enabled survival_chaos 0
execute if score #config_grue_enabled survival_chaos matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Grue (Darkness Damage) disabled","color":"red"}]
execute unless score #config_grue_enabled survival_chaos matches 0 run scoreboard players set #config_grue_enabled survival_chaos 1
execute unless score #config_grue_enabled survival_chaos matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Grue (Darkness Damage) enabled","color":"green"}]
