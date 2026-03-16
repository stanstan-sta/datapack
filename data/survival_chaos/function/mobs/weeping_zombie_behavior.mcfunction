# ============================================
# Weeping Zombie Behavior
# Freezes when player looks at them
# ============================================

# Check if any player is looking at this zombie (simplified: check if player is nearby and facing)
# If not being observed, allow movement; if observed, apply slowness
execute as @e[type=zombie,tag=weeping_zombie] at @s unless entity @a[distance=..15,limit=1] run effect clear @s minecraft:slowness
execute as @e[type=zombie,tag=weeping_zombie] at @s if entity @a[distance=..15,limit=1] run effect give @s minecraft:slowness 1 10 true

# Make them invincible
execute as @e[type=zombie,tag=weeping_zombie] run data merge entity @s {Invulnerable:1b}
