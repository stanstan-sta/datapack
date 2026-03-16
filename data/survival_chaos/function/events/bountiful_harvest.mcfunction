# ============================================
# Event: Bountiful Harvest
# Rapid crop growth in nearby area
# ============================================

title @a subtitle {"text":"✦ Nature accelerates!","color":"green"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Random Event","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"✦ Bountiful Harvest","color":"green","bold":true},{"text":" - Crops grow rapidly!","color":"white"}]

# Apply bone meal effect to crops in a radius around each player
execute as @a[gamemode=!spectator] at @s run function survival_chaos:events/bountiful_harvest_apply

# Play sound
execute as @a at @s run playsound minecraft:item.bone_meal.use master @s ~ ~ ~ 1.0 1.0

# Spawn particles
execute as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 5 2 5 0.5 200
