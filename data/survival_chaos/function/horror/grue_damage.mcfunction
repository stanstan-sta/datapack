# ============================================
# Grue - Apply Darkness Damage
# ============================================

# Increment darkness timer
scoreboard players add @s survival_chaos 1

# After 5 seconds (100 ticks / 20 per second = 5 checks)
execute if score @s survival_chaos matches 5.. run effect give @s minecraft:darkness 5 0
execute if score @s survival_chaos matches 5.. run damage @s 2 minecraft:magic
execute if score @s survival_chaos matches 5.. at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1.0 0.5
execute if score @s survival_chaos matches 5.. at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 10

# Warning at 3 seconds
execute if score @s survival_chaos matches 3 run title @s actionbar {"text":"⚠ Something lurks in the darkness... ⚠","color":"dark_red"}
execute if score @s survival_chaos matches 3 at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 0.5 0.5
