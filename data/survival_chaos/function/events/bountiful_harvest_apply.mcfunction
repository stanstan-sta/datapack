# ============================================
# Bountiful Harvest - Apply Growth
# Grows crops in a 10-block radius
# ============================================

# Wheat
execute at @s positioned ~-10 ~-3 ~-10 run execute as @e[type=minecraft:area_effect_cloud,limit=1] run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:wheat[age=7] replace minecraft:wheat
# Carrots
execute at @s positioned ~-10 ~-3 ~-10 run execute as @e[type=minecraft:area_effect_cloud,limit=1] run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:carrots[age=7] replace minecraft:carrots
# Potatoes
execute at @s positioned ~-10 ~-3 ~-10 run execute as @e[type=minecraft:area_effect_cloud,limit=1] run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:potatoes[age=7] replace minecraft:potatoes
# Beetroots
execute at @s positioned ~-10 ~-3 ~-10 run execute as @e[type=minecraft:area_effect_cloud,limit=1] run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:beetroots[age=3] replace minecraft:beetroots
# Nether Wart
execute at @s positioned ~-10 ~-3 ~-10 run execute as @e[type=minecraft:area_effect_cloud,limit=1] run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:nether_wart[age=3] replace minecraft:nether_wart

# Grow saplings into trees (simulated by particle effect)
execute at @s positioned ~-10 ~-3 ~-10 as @e[type=minecraft:armor_stand,limit=1] run particle minecraft:happy_villager ~ ~ ~ 10 3 10 1 50
