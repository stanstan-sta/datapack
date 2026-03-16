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

# Check for corrupted bed (during Blood Moon or when sanity is low)
execute if score #blood_moon_active survival_chaos matches 1 run function survival_chaos:horror/corrupted_bed_check
execute if score @s survival_chaos matches ..30 run function survival_chaos:horror/corrupted_bed_check

