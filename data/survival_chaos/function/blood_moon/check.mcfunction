# ============================================
# Blood Moon - Check and Trigger
# Runs every tick to track days and trigger Blood Moon
# ============================================

# Increment timer (counts ticks since last blood moon)
scoreboard players add #blood_moon_timer survival_chaos 1

# Check if 7 in-game days have passed (168000 ticks) and Blood Moon is enabled
execute if score #config_blood_moon_enabled survival_chaos matches 1 if score #blood_moon_timer survival_chaos >= #blood_moon_interval survival_chaos run function survival_chaos:blood_moon/start

# Blood Moon is active - run effects
execute if score #blood_moon_active survival_chaos matches 1 run function survival_chaos:blood_moon/effects
