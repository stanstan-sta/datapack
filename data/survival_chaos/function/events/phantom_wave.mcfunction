# ============================================
# Event: Phantom Wave!
# Spawns phantoms above players
# ============================================

# Announce event
title @a times 10 40 10
title @a title {"text":"🦇 PHANTOM WAVE 🦇","color":"dark_gray","bold":true}
title @a subtitle {"text":"They descend from the shadows!","color":"gray"}
execute as @a at @s run playsound minecraft:entity.phantom.ambient hostile @s ~ ~ ~ 1 0.5

# Spawn phantoms above each player
execute as @a at @s run summon phantom ~2 ~15 ~2
execute as @a at @s run summon phantom ~-2 ~15 ~-2
execute as @a at @s run summon phantom ~0 ~15 ~3
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon phantom ~3 ~15 ~0
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon phantom ~-3 ~15 ~-3
