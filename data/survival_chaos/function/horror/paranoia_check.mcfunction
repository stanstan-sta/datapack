# ============================================
# Paranoia Effects Check
# Randomly triggers hallucination effects
# ============================================

scoreboard players set #paranoia_timer survival_chaos 0

# Phantom Hiss - creeper sound with no creeper
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run function survival_chaos:horror/phantom_hiss

# Stalker - armor stand that vanishes when looked at
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run function survival_chaos:horror/stalker_spawn

# Cave Whispers - underground sound effects
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/thirty_percent if entity @s[y=0,dy=50] run function survival_chaos:horror/cave_whispers
