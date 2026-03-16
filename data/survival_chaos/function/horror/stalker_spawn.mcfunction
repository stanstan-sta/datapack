# ============================================
# Stalker - Spawn vanishing armor stand
# ============================================

# Spawn armor stand with creepy head at distance
summon minecraft:armor_stand ~-15 ~ ~-15 {Invisible:0b,NoGravity:1b,Tags:["stalker"],ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",count:1}]}

# Play sound
playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 0.3 0.5

# Remove armor stand after 3 seconds
schedule function survival_chaos:horror/stalker_remove 60t
