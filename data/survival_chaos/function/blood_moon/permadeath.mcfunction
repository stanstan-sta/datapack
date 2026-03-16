# ============================================
# Blood Moon - Permadeath
# Executed when a player dies during Blood Moon
# ============================================

# Switch to spectator mode
gamemode spectator @s

# Announce permadeath
title @s title {"text":"YOU DIED","color":"dark_red","bold":true}
title @s subtitle {"text":"Permadeath is active","color":"red"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Blood Moon","color":"dark_red","bold":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"red"},{"text":" has fallen to the Blood Moon curse!","color":"red"}]

# Sound effect
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.0 0.5
