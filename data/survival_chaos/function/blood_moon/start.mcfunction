# ============================================
# Blood Moon - Start Event
# ============================================

# Reset timer and activate Blood Moon
scoreboard players set #blood_moon_timer survival_chaos 0
scoreboard players set #blood_moon_active survival_chaos 1
scoreboard players set #blood_moon_duration survival_chaos 0

# Set time to night
time set 13000

# Visual: Red worldborder warning effect
worldborder warning distance 999999999

# Announce Blood Moon
title @a title {"text":"BLOOD MOON RISES","color":"dark_red","bold":true}
title @a subtitle {"text":"Prepare for the siege...","color":"red"}
tellraw @a [{"text":"\n"},{"text":"☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠","color":"dark_red","bold":true}]
tellraw @a [{"text":"   THE BLOOD MOON HAS RISEN!","color":"red","bold":true}]
tellraw @a [{"text":"   Mobs are empowered and relentless","color":"gray"}]
tellraw @a [{"text":"   They can break through defenses!","color":"gray"}]
tellraw @a [{"text":"   Death means PERMADEATH!","color":"dark_red","bold":true}]
tellraw @a [{"text":"☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠\n","color":"dark_red","bold":true}]

# Play ominous sounds
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 0.5
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 0.8
execute as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 1.0 0.7
