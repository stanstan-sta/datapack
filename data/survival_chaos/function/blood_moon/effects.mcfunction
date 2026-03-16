# ============================================
# Blood Moon - Active Effects
# Runs every tick while Blood Moon is active
# ============================================

# Track duration (ends after one full night = ~10000 ticks)
scoreboard players add #blood_moon_duration survival_chaos 1

# Check if Blood Moon should end (when day arrives)
execute store result score #daytime survival_chaos run time query daytime
execute if score #daytime survival_chaos matches 0..12999 run function survival_chaos:blood_moon/end

# Empower all hostile mobs with Speed II and Strength I
execute as @e[type=#minecraft:raiders] run effect give @s minecraft:speed 5 1 true
execute as @e[type=#minecraft:raiders] run effect give @s minecraft:strength 5 0 true
execute as @e[type=zombie] run effect give @s minecraft:speed 5 1 true
execute as @e[type=zombie] run effect give @s minecraft:strength 5 0 true
execute as @e[type=skeleton] run effect give @s minecraft:speed 5 1 true
execute as @e[type=skeleton] run effect give @s minecraft:strength 5 0 true
execute as @e[type=creeper] run effect give @s minecraft:speed 5 1 true
execute as @e[type=spider] run effect give @s minecraft:speed 5 1 true
execute as @e[type=cave_spider] run effect give @s minecraft:speed 5 1 true

# Make zombies break glass and wooden blocks (simulation via particle effects and block replacement)
# Note: Actual block breaking requires more complex detection, this is a simplified version
execute as @e[type=zombie] at @s if block ~ ~ ~ minecraft:glass run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute as @e[type=zombie] at @s if block ~ ~1 ~ minecraft:glass run fill ~ ~1 ~ ~ ~1 ~ minecraft:air destroy
execute as @e[type=zombie] at @s if block ~ ~ ~ #minecraft:wooden_doors run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
execute as @e[type=zombie] at @s if block ~ ~1 ~ #minecraft:planks if predicate survival_chaos:random/ten_percent run setblock ~ ~1 ~ minecraft:air destroy

execute as @e[type=creeper] at @s if block ~ ~ ~ minecraft:glass run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute as @e[type=creeper] at @s if block ~ ~1 ~ minecraft:glass run fill ~ ~1 ~ ~ ~1 ~ minecraft:air destroy
execute as @e[type=creeper] at @s if block ~ ~ ~ #minecraft:wooden_doors run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy

# Spawn extra mobs around players
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:zombie ~10 ~ ~10 {Tags:["blood_moon_spawn"]}
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:skeleton ~-10 ~ ~-10 {Tags:["blood_moon_spawn"]}
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run summon minecraft:creeper ~5 ~ ~-5 {Tags:["blood_moon_spawn"]}

# Play ambient blood moon sounds every 10 seconds
execute if score #blood_moon_duration survival_chaos matches 200 run execute as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 0.6
execute if score #blood_moon_duration survival_chaos matches 200 run scoreboard players set #blood_moon_duration survival_chaos 0

# Check for player deaths during Blood Moon
execute if score #config_permadeath_enabled survival_chaos matches 1 as @a[gamemode=!spectator,scores={health_track=..0}] run function survival_chaos:blood_moon/permadeath
