# ============================================
# Event: Mysterious Force!
# Applies random potion effects (good or bad!)
# ============================================

# Announce event
title @a times 10 40 10
title @a title {"text":"✧ MYSTERIOUS FORCE ✧","color":"light_purple","bold":true}
title @a subtitle {"text":"Something courses through your veins...","color":"dark_purple"}
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

# Each effect has independent 20% chance - you might get multiple!
# Positive effects
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s speed 30 1
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s strength 30 0
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s night_vision 60 0
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s haste 30 1
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s resistance 30 0
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s jump_boost 30 2

# Negative effects
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s slowness 15 0
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s nausea 10 0
execute as @a if predicate survival_chaos:random/one_in_five run effect give @s blindness 8 0
