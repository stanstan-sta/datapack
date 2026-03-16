# ============================================
# Low Sanity Effects
# Triggered when sanity drops below 30
# ============================================

# Elder Guardian jumpscare effect
execute if score @s survival_chaos matches ..10 if predicate survival_chaos:random/ten_percent run effect give @s minecraft:mining_fatigue 5 2
execute if score @s survival_chaos matches ..10 if predicate survival_chaos:random/ten_percent at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1.0 0.8

# Visual distortions
execute if score @s survival_chaos matches ..20 if predicate survival_chaos:random/ten_percent run effect give @s minecraft:nausea 10 0

# Auditory hallucinations
execute if score @s survival_chaos matches ..25 if predicate survival_chaos:random/ten_percent at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 0.5 1.2
execute if score @s survival_chaos matches ..25 if predicate survival_chaos:random/ten_percent at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 0.3 0.7

# Warning message
execute if score @s survival_chaos matches ..30 if predicate survival_chaos:random/ten_percent run title @s actionbar {"text":"Your mind feels unstable...","color":"dark_red","italic":true}

# Particle effects
execute if score @s survival_chaos matches ..15 at @s run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.01 3
