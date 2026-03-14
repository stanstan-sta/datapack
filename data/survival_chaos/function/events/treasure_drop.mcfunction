# ============================================
# Event: Treasure Drop!
# Rewards players with random valuable items
# ============================================

# Announce event
title @a times 10 40 10
title @a title {"text":"✦ TREASURE DROP ✦","color":"gold","bold":true}
title @a subtitle {"text":"The gods smile upon you!","color":"yellow"}
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2

# Give random treasure (each has independent 30% chance, plus guaranteed items)
execute as @a at @s if predicate survival_chaos:random/thirty_percent run give @s diamond 2
execute as @a at @s if predicate survival_chaos:random/thirty_percent run give @s emerald 3
execute as @a at @s if predicate survival_chaos:random/thirty_percent run give @s gold_ingot 5
execute as @a at @s if predicate survival_chaos:random/thirty_percent run give @s golden_apple 1

# Everyone always gets some useful items
execute as @a at @s run give @s iron_ingot 4
execute as @a at @s run give @s cooked_beef 8
execute as @a at @s run give @s experience_bottle 5
