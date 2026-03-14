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

# Announce pack loaded
tellraw @a [{"text":"[","color":"gray"},{"text":"Survival Chaos","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Datapack loaded! Prepare for chaos...","color":"yellow"}]
