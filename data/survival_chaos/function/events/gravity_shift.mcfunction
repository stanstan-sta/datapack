# ============================================
# Event: Gravity Shift
# Random levitation and slow falling effects
# ============================================

title @a subtitle {"text":"✦ Gravity becomes unstable!","color":"light_purple"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Random Event","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"✦ Gravity Shift","color":"light_purple","bold":true},{"text":" - The laws of physics twist!","color":"white"}]

# Give players random levitation or slow falling
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/one_in_two run effect give @s minecraft:levitation 10 1
execute as @a[gamemode=!spectator] at @s unless entity @s[nbt={ActiveEffects:[{Id:25}]}] run effect give @s minecraft:slow_falling 20 0

# Play sound
execute as @a at @s run playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1.0 1.2

# Spawn particles
execute as @a at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 100
