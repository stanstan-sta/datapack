# ============================================
# Creeper Proximity Warning - Check for nearby creepers
# ============================================

# Reset creeper timer
scoreboard players set #creeper_timer survival_chaos 0

# Warn players with a creeper within 15 blocks
execute as @a at @s if entity @e[type=creeper,distance=..15] run function survival_chaos:warnings/creeper_nearby
