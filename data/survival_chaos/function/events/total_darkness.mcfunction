# ============================================
# Event: Total Darkness
# Brief darkness and blindness effect
# ============================================

title @a subtitle {"text":"✦ The world goes dark!","color":"dark_gray"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Random Event","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"✦ Total Darkness","color":"dark_gray","bold":true},{"text":" - Can you see in the void?","color":"white"}]

# Apply darkness and blindness
execute as @a[gamemode=!spectator] run effect give @s minecraft:darkness 15 0
execute as @a[gamemode=!spectator] run effect give @s minecraft:blindness 10 0

# Play sound
execute as @a at @s run playsound minecraft:entity.warden.ambient master @s ~ ~ ~ 0.5 0.5
execute as @a at @s run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1.0 0.5

# Spawn particles
execute as @a at @s run particle minecraft:large_smoke ~ ~1 ~ 2 1 2 0.1 100
