# ============================================
# Sleep Disruption - Nightmares during sleep
# ============================================

# Spawn phantoms above sleeping player
summon minecraft:phantom ~ ~5 ~ {Tags:["nightmare_phantom"]}
summon minecraft:phantom ~ ~6 ~ {Tags:["nightmare_phantom"]}

# Wake player with sound
playsound minecraft:entity.phantom.death master @s ~ ~ ~ 1.0 0.5
playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 0.5 1.2

# Display message
title @s subtitle {"text":"Something disturbs your sleep!","color":"red"}
tellraw @s [{"text":"[","color":"gray"},{"text":"Night Terror","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"You cannot rest peacefully...","color":"red"}]
