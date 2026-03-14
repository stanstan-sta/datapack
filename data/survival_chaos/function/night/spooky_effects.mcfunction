# ============================================
# Night Terror - Spooky effects during nighttime
# ============================================

# Random spooky ambient sounds
execute as @a at @s if predicate survival_chaos:random/thirty_percent run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 0.7
execute as @a at @s if predicate survival_chaos:random/ten_percent run playsound minecraft:entity.phantom.ambient hostile @s ~ ~ ~ 0.3 0.5
execute as @a at @s if predicate survival_chaos:random/ten_percent run playsound minecraft:entity.enderman.stare hostile @s ~ ~ ~ 0.2 0.6

# Occasional extra hostile mob spawns
execute as @a at @s if predicate survival_chaos:random/ten_percent run summon zombie ~10 ~ ~10
execute as @a at @s if predicate survival_chaos:random/ten_percent run summon skeleton ~-10 ~ ~-10

# Eerie particle effects
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 3 2 3 0.01 5
execute as @a at @s if predicate survival_chaos:random/thirty_percent run particle minecraft:soul_fire_flame ~ ~1 ~ 2 1 2 0.02 3
