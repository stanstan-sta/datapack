# ============================================
# Event: Slime Rain
# Slimes fall from the sky
# ============================================

title @a subtitle {"text":"✦ Slimes rain from above!","color":"green"}
tellraw @a [{"text":"[","color":"gray"},{"text":"Random Event","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"✦ Slime Rain","color":"green","bold":true},{"text":" - It's raining slimes!","color":"white"}]

# Spawn slimes above players
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~5 ~20 ~3 {Size:1}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~-3 ~22 ~5 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~2 ~18 ~-4 {Size:1}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~-5 ~20 ~-2 {Size:0}
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/thirty_percent run summon minecraft:slime ~4 ~25 ~-5 {Size:2}
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/thirty_percent run summon minecraft:slime ~-4 ~23 ~4 {Size:1}

# Play sound
execute as @a at @s run playsound minecraft:entity.slime.squish master @s ~ ~ ~ 1.0 0.8

# Spawn particles
execute as @a at @s run particle minecraft:item_slime ~ ~15 ~ 3 5 3 0.2 50
