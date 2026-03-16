execute if score #config_head_drops survival_chaos matches 1 run scoreboard players set #config_head_drops survival_chaos 0
execute if score #config_head_drops survival_chaos matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Mob Head Drops disabled","color":"red"}]
execute unless score #config_head_drops survival_chaos matches 0 run scoreboard players set #config_head_drops survival_chaos 1
execute unless score #config_head_drops survival_chaos matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"Mob Head Drops enabled","color":"green"}]
