# ============================================
# Sanity System - Track and Update
# Players lose sanity when not sleeping or underground
# ============================================

# Initialize sanity for new players (100 = full sanity)
execute as @a unless score @s survival_chaos matches -2147483648..2147483647 run scoreboard players set @s survival_chaos 100

# Lose sanity slowly when underground (below Y=50) - every check loses 1 sanity
execute as @a[gamemode=!spectator,y=0,dy=50] run scoreboard players remove @s survival_chaos 1

# Lose sanity if not slept recently (tracked via statistics, simplified here as time-based)
# Players at low sanity get negative effects
execute as @a[scores={survival_chaos=..30}] at @s run function survival_chaos:horror/low_sanity_effects

# Restore sanity when sleeping
execute as @a[nbt={SleepTimer:1s}] run scoreboard players add @s survival_chaos 5

# Cap sanity at 100
execute as @a[scores={survival_chaos=101..}] run scoreboard players set @s survival_chaos 100
