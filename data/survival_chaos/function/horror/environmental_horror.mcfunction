# ============================================
# Environmental Horror - Flash Effects
# Random blindness and fog for claustrophobic horror
# ============================================

# Flash blindness with thunder sound
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run effect give @s minecraft:blindness 5 0
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.8 1.2
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1

# Dense fog effect (darkness)
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run effect give @s minecraft:darkness 8 0
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run particle minecraft:large_smoke ~ ~1 ~ 5 2 5 0.1 100
execute as @a[gamemode=!spectator] at @s if predicate survival_chaos:random/ten_percent run title @s actionbar {"text":"The air grows thick...","color":"gray","italic":true}
