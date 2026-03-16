# ============================================
# Torch Blowout - Torches extinguish during Blood Moon
# ============================================

scoreboard players set #torch_timer survival_chaos 0

# Find and extinguish torches near players
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent positioned ~-10 ~-5 ~-10 run function survival_chaos:horror/torch_blowout_area
