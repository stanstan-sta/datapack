execute if score #config_creeper_warning survival_chaos matches 1 run scoreboard players set #config_creeper_warning survival_chaos 0
execute if score #config_creeper_warning survival_chaos matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Creeper Warning disabled","color":"red"}]
execute unless score #config_creeper_warning survival_chaos matches 0 run scoreboard players set #config_creeper_warning survival_chaos 1
execute unless score #config_creeper_warning survival_chaos matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Creeper Warning enabled","color":"green"}]
