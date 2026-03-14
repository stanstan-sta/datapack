# ============================================
# Survival Chaos - Main Tick Loop
# Runs every game tick (20 times per second)
# ============================================

# --- Random Events Timer (every 3600 ticks = 3 minutes) ---
scoreboard players add #event_timer survival_chaos 1
execute if score #event_timer survival_chaos matches 3600.. run function survival_chaos:events/trigger_event

# --- Night Terror Check (every 600 ticks = 30 seconds) ---
scoreboard players add #night_timer survival_chaos 1
execute if score #night_timer survival_chaos matches 600.. run function survival_chaos:night/check_night

# --- Creeper Proximity Warning (every 20 ticks = 1 second) ---
scoreboard players add #creeper_timer survival_chaos 1
execute if score #creeper_timer survival_chaos matches 20.. run function survival_chaos:warnings/creeper_check

# --- Low Health Adrenaline Rush (every 20 ticks = 1 second) ---
scoreboard players add #adrenaline_timer survival_chaos 1
execute if score #adrenaline_timer survival_chaos matches 20.. run function survival_chaos:effects/adrenaline
