# ============================================
# Corrupted Bed Trigger
# Explode bed or teleport to dangerous location
# ============================================

# 50% chance: Explode the bed
execute if predicate survival_chaos:random/one_in_two at @s run summon minecraft:tnt ~ ~ ~
execute if predicate survival_chaos:random/one_in_two at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1.0 0.8
execute if predicate survival_chaos:random/one_in_two at @s run particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.1 50
execute if predicate survival_chaos:random/one_in_two run tellraw @s [{"text":"[","color":"gray"},{"text":"Horror","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"The bed rejects you violently!","color":"red"}]

# 50% chance: Teleport to dark cave location
execute unless predicate survival_chaos:random/one_in_two run spreadplayers ~ ~ 10 50 false @s
execute unless predicate survival_chaos:random/one_in_two run tp @s ~ ~-30 ~
execute unless predicate survival_chaos:random/one_in_two run effect give @s minecraft:darkness 15 0
execute unless predicate survival_chaos:random/one_in_two run effect give @s minecraft:blindness 10 0
execute unless predicate survival_chaos:random/one_in_two at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1.0 0.5
execute unless predicate survival_chaos:random/one_in_two run tellraw @s [{"text":"[","color":"gray"},{"text":"Horror","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"You wake in a nightmare...","color":"dark_red"}]
