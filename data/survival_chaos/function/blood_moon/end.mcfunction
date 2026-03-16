# ============================================
# Blood Moon - End Event
# ============================================

scoreboard players set #blood_moon_active survival_chaos 0

# Remove worldborder warning
worldborder warning distance 5

# Announce end
title @a subtitle {"text":"The blood moon fades...","color":"gray"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Blood Moon","color":"dark_red"},{"text":"] ","color":"gray"},{"text":"The siege has ended. You survived the night.","color":"yellow"}]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
