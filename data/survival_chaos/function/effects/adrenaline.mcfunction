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
