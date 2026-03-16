# ============================================
# Trigger a Random Event
# Uses predicate cascade for uniform 20% chance per event
# ============================================

# Reset the event timer
scoreboard players set #event_timer survival_chaos 0

# Play event incoming sound
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1

# Random event selection (10 events with equal ~10% chance each)
# Cascade: 1/10 -> 1/9 -> 1/8 -> 1/7 -> 1/6 -> 1/5 -> 1/4 -> 1/3 -> 1/2 -> guaranteed
execute if predicate survival_chaos:random/ten_percent run return run function survival_chaos:events/treasure_drop
execute if predicate survival_chaos:random/one_in_nine run return run function survival_chaos:events/mob_ambush
execute if predicate survival_chaos:random/one_in_eight run return run function survival_chaos:events/random_effect
execute if predicate survival_chaos:random/one_in_seven run return run function survival_chaos:events/lightning_storm
execute if predicate survival_chaos:random/one_in_six run return run function survival_chaos:events/phantom_wave
execute if predicate survival_chaos:random/one_in_five run return run function survival_chaos:events/gravity_shift
execute if predicate survival_chaos:random/one_in_four run return run function survival_chaos:events/bountiful_harvest
execute if predicate survival_chaos:random/one_in_three run return run function survival_chaos:events/slime_rain
execute if predicate survival_chaos:random/one_in_two run return run function survival_chaos:events/total_darkness

# Low chance Blood Moon event (if not already active)
execute if score #blood_moon_active survival_chaos matches 0 run function survival_chaos:blood_moon/start
