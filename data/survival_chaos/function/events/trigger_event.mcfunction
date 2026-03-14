# ============================================
# Trigger a Random Event
# Uses predicate cascade for uniform 20% chance per event
# ============================================

# Reset the event timer
scoreboard players set #event_timer survival_chaos 0

# Play event incoming sound
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1

# Random event selection (equal 20% chance each)
# Cascade: 1/5 -> 1/4 -> 1/3 -> 1/2 -> guaranteed
execute if predicate survival_chaos:random/one_in_five run return run function survival_chaos:events/treasure_drop
execute if predicate survival_chaos:random/one_in_four run return run function survival_chaos:events/mob_ambush
execute if predicate survival_chaos:random/one_in_three run return run function survival_chaos:events/random_effect
execute if predicate survival_chaos:random/one_in_two run return run function survival_chaos:events/lightning_storm
function survival_chaos:events/phantom_wave
