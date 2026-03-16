# ============================================
# Adrenaline Rush - Buffs for low-health players
# When at 4 hearts (8 half-hearts) or less,
# gain Speed I and Resistance I for 5 seconds
# ============================================

# Reset adrenaline timer
scoreboard players set #adrenaline_timer survival_chaos 0

# Apply adrenaline to low-health players (health_track uses half-hearts, 8 = 4 hearts)
execute as @a[scores={health_track=1..8}] run effect give @s speed 5 0 true
execute as @a[scores={health_track=1..8}] run effect give @s resistance 5 0 true

# Enhanced effects: heartbeat sound and screen shake (nausea for brief moment)
execute as @a[scores={health_track=1..8}] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.7 1.2
execute as @a[scores={health_track=1..8}] run title @s actionbar {"text":"⚠ ADRENALINE RUSH! ⚠","color":"yellow","bold":true}

# Visual effect with particles
execute as @a[scores={health_track=1..8}] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10
execute as @a[scores={health_track=1..8}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.8 0.3 0.02 5

