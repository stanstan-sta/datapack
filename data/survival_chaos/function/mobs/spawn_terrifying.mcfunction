# ============================================
# Terrifying Mobs - Spawn System
# Randomly spawns scary mob variants
# ============================================

# Weeping Zombies - freeze when observed
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:zombie ~ ~ ~-10 {Tags:["weeping_zombie"],attributes:[{id:"minecraft:generic.movement_speed",base:0.35}],IsBaby:0b,CustomName:'{"text":"Weeping Zombie","color":"red"}'}

# Ghost Spiders - invisible with glowing eyes
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:spider ~ ~ ~10 {Tags:["ghost_spider"],ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:0b},{Id:24,Duration:999999,Amplifier:0,ShowParticles:1b}],CustomName:'{"text":"Ghost Spider","color":"gray"}'}

# Silent Creepers - no sound before detonation
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:creeper ~5 ~ ~5 {Tags:["silent_creeper"],Silent:1b,CustomName:'{"text":"Silent Creeper","color":"dark_green"}'}
