# ============================================
# Survival Chaos - Initialization
# Runs once when the datapack is loaded/reloaded
# ============================================

# Create scoreboard objectives
scoreboard objectives add survival_chaos dummy
scoreboard objectives add health_track health

# Initialize timers
scoreboard players set #event_timer survival_chaos 0
scoreboard players set #night_timer survival_chaos 0
scoreboard players set #creeper_timer survival_chaos 0
scoreboard players set #adrenaline_timer survival_chaos 0
scoreboard players set #blood_moon_timer survival_chaos 0
scoreboard players set #day_counter survival_chaos 0
scoreboard players set #grue_timer survival_chaos 0
scoreboard players set #paranoia_timer survival_chaos 0
scoreboard players set #torch_timer survival_chaos 0
scoreboard players set #sanity_timer survival_chaos 0


# Initialize Blood Moon system (7 in-game days = 168000 ticks)
scoreboard players set #blood_moon_interval survival_chaos 168000
scoreboard players set #blood_moon_active survival_chaos 0

# Initialize configuration settings (default values)
scoreboard players set #config_event_interval survival_chaos 3600
scoreboard players set #config_blood_moon_enabled survival_chaos 1
scoreboard players set #config_permadeath_enabled survival_chaos 1
scoreboard players set #config_creeper_warning survival_chaos 1
scoreboard players set #config_head_drops survival_chaos 1
scoreboard players set #config_paranoia_enabled survival_chaos 1
scoreboard players set #config_grue_enabled survival_chaos 1

# Initialize per-player tracking (sanity starts at 100)
execute as @a unless score @s survival_chaos matches -2147483648..2147483647 run scoreboard players set @s survival_chaos 100


# Announce pack loaded
tellraw @a [{"text":"[","color":"gray"},{"text":"Survival Chaos","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Datapack loaded! Prepare for chaos...","color":"yellow"}]
tellraw @a [{"text":"[","color":"gray"},{"text":"Survival Chaos","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Use ","color":"gray"},{"text":"/function survival_chaos:config/menu","color":"aqua","clickEvent":{"action":"run_command","value":"/function survival_chaos:config/menu"},"hoverEvent":{"action":"show_text","value":"Click to open config"}},{"text":" to customize settings","color":"gray"}]

