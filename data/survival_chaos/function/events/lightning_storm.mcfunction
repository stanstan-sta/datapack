# ============================================
# Event: Lightning Storm!
# Strikes lightning near all players
# ============================================

# Announce event
title @a times 10 40 10
title @a title {"text":"⚡ LIGHTNING STORM ⚡","color":"aqua","bold":true}
title @a subtitle {"text":"Seek shelter!","color":"gray"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder weather @s ~ ~ ~ 1 0.8

# Strike lightning near each player (not directly on them)
execute as @a at @s run summon lightning_bolt ~5 ~ ~0
execute as @a at @s run summon lightning_bolt ~-5 ~ ~0
execute as @a at @s run summon lightning_bolt ~0 ~ ~5
execute as @a at @s run summon lightning_bolt ~0 ~ ~-5
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon lightning_bolt ~3 ~ ~3
execute as @a at @s if predicate survival_chaos:random/thirty_percent run summon lightning_bolt ~-3 ~ ~-3
execute as @a at @s if predicate survival_chaos:random/ten_percent run summon lightning_bolt ~7 ~ ~7
