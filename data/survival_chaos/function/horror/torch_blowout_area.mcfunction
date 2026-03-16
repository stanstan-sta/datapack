# ============================================
# Torch Blowout Area - Replace torches in area
# ============================================

# Replace wall torches
fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:air replace minecraft:wall_torch
fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:air replace minecraft:torch

# Drop torch items with particle effect
execute positioned ~-10 ~-5 ~-10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:20}
execute positioned ~-10 ~-5 ~-10 run particle minecraft:smoke ~ ~ ~ 5 2 5 0.02 50
execute positioned ~-10 ~-5 ~-10 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.5 1.0
