# ============================================
# Survival Chaos - Main Tick Loop
# Runs every game tick (20 times per second)
# ============================================

# --- Random Events Timer (configurable interval) ---
scoreboard players add #event_timer survival_chaos 1
execute if score #event_timer survival_chaos >= #config_event_interval survival_chaos run function survival_chaos:events/trigger_event

# --- Night Terror Check (every 600 ticks = 30 seconds) ---
scoreboard players add #night_timer survival_chaos 1
execute if score #night_timer survival_chaos matches 600.. run function survival_chaos:night/check_night

# --- Creeper Proximity Warning (every 20 ticks = 1 second) ---
execute if score #config_creeper_warning survival_chaos matches 1 run scoreboard players add #creeper_timer survival_chaos 1
execute if score #config_creeper_warning survival_chaos matches 1 if score #creeper_timer survival_chaos matches 20.. run function survival_chaos:warnings/creeper_check

# --- Low Health Adrenaline Rush (every 20 ticks = 1 second) ---
scoreboard players add #adrenaline_timer survival_chaos 1
execute if score #adrenaline_timer survival_chaos matches 20.. run function survival_chaos:effects/adrenaline

# --- Blood Moon System Check ---
function survival_chaos:blood_moon/check

# --- Grue (Darkness Damage) Check (every 20 ticks = 1 second) ---
execute if score #config_grue_enabled survival_chaos matches 1 run scoreboard players add #grue_timer survival_chaos 1
execute if score #config_grue_enabled survival_chaos matches 1 if score #grue_timer survival_chaos matches 20.. run function survival_chaos:horror/grue_check

# --- Paranoia Effects (every 200 ticks = 10 seconds) ---
execute if score #config_paranoia_enabled survival_chaos matches 1 run scoreboard players add #paranoia_timer survival_chaos 1
execute if score #config_paranoia_enabled survival_chaos matches 1 if score #paranoia_timer survival_chaos matches 200.. run function survival_chaos:horror/paranoia_check

# --- Torch Blowout Check (during Blood Moon, every 100 ticks = 5 seconds) ---
execute if score #blood_moon_active survival_chaos matches 1 run scoreboard players add #torch_timer survival_chaos 1
execute if score #blood_moon_active survival_chaos matches 1 if score #torch_timer survival_chaos matches 100.. run function survival_chaos:horror/torch_blowout

# --- Terrifying Mob Behaviors ---
function survival_chaos:mobs/weeping_zombie_behavior

