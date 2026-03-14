# ============================================
# Event: Mob Ambush!
# Spawns hostile mobs around players
# ============================================

# Announce event
title @a times 10 40 10
title @a title {"text":"☠ MOB AMBUSH ☠","color":"dark_red","bold":true}
title @a subtitle {"text":"They're coming for you...","color":"red"}
execute as @a at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.8

# Spawn hostile mobs around each player
execute as @a at @s run summon zombie ~5 ~ ~0
execute as @a at @s run summon zombie ~-5 ~ ~0
execute as @a at @s run summon skeleton ~0 ~ ~5
execute as @a at @s run summon skeleton ~0 ~ ~-5
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon spider ~4 ~ ~4
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon witch ~-4 ~ ~-4
execute as @a at @s if predicate survival_chaos:random/ten_percent run summon creeper ~3 ~ ~3
