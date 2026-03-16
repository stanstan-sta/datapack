# ============================================
# Grue - Darkness Damage
# Damages players standing in light level 0 for >5 seconds
# ============================================

scoreboard players set #grue_timer survival_chaos 0

# Check each player for light level 0
execute as @a[gamemode=!spectator] at @s store result score @s survival_chaos run data get entity @s {Pos:[0d,0d,0d]}
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:in_darkness run function survival_chaos:horror/grue_damage
execute as @a[gamemode=!spectator] at @s unless predicate survival_chaos:in_darkness run scoreboard players set @s survival_chaos 0
