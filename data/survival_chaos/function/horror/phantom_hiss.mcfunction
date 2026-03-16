# ============================================
# Phantom Hiss - Creeper sound hallucination
# ============================================

playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1.0 1.0
title @s actionbar {"text":"You hear a hiss behind you...","color":"red"}
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 20
