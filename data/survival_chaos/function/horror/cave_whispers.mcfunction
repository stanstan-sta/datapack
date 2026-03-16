# ============================================
# Cave Whispers - Underground paranoia sounds
# ============================================

# Random eerie sounds
execute if predicate survival_chaos:random/one_in_three run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 0.2 0.5
execute if predicate survival_chaos:random/one_in_three run playsound minecraft:block.stone.step master @s ~5 ~ ~-5 0.3 0.8
execute if predicate survival_chaos:random/one_in_three run playsound minecraft:entity.zombie.ambient master @s ~-5 ~ ~5 0.1 0.7

title @s actionbar {"text":"You feel like you're being watched...","color":"gray","italic":true}
