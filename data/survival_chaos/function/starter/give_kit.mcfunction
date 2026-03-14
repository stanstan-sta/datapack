# ============================================
# Starter Kit - Given to first-time players
# ============================================

# Give basic tools
give @s stone_pickaxe 1
give @s stone_axe 1
give @s stone_sword 1

# Give supplies
give @s torch 16
give @s cooked_beef 16
give @s white_bed 1
give @s shield 1
give @s oak_boat 1

# Welcome message
title @s times 20 60 20
title @s title {"text":"Welcome to Survival Chaos!","color":"gold","bold":true}
title @s subtitle {"text":"Good luck... you'll need it.","color":"yellow"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

# Feature list
tellraw @s [{"text":"\n"},{"text":"========================================\n","color":"gold"},{"text":"         ☠ ","color":"red"},{"text":"SURVIVAL CHAOS","color":"gold","bold":true},{"text":" ☠\n","color":"red"},{"text":"========================================\n","color":"gold"},{"text":"\n"},{"text":" Features:\n","color":"yellow","bold":true},{"text":" • ","color":"gray"},{"text":"Random Events","color":"green"},{"text":" every 3 minutes\n","color":"gray"},{"text":" • ","color":"gray"},{"text":"Mob Head Drops","color":"green"},{"text":" (10% chance on kill)\n","color":"gray"},{"text":" • ","color":"gray"},{"text":"Creeper Warnings","color":"green"},{"text":" when one is nearby\n","color":"gray"},{"text":" • ","color":"gray"},{"text":"Night Terrors","color":"green"},{"text":" with spooky sounds\n","color":"gray"},{"text":" • ","color":"gray"},{"text":"Adrenaline Rush","color":"green"},{"text":" at low health\n","color":"gray"},{"text":" • ","color":"gray"},{"text":"Custom Recipes","color":"green"},{"text":" for name tags & saddles\n","color":"gray"},{"text":"\n"},{"text":"========================================\n","color":"gold"}]
