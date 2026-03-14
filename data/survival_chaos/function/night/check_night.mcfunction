# ============================================
# Night Terror - Check if it's nighttime
# ============================================

# Reset night timer
scoreboard players set #night_timer survival_chaos 0

# Check if it's night (13000-23000 daytime ticks)
execute store result score #daytime survival_chaos run time query daytime
execute if score #daytime survival_chaos matches 13000..23000 run function survival_chaos:night/spooky_effects
