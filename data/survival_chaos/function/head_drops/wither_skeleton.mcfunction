# Wither Skeleton Head Drop - triggered by advancement
advancement revoke @s only survival_chaos:head_drops/wither_skeleton_kill

# Check if head drops are enabled
execute if score #config_head_drops survival_chaos matches 0 run return 0

# Base 10% chance, 40% with Looting
execute if predicate survival_chaos:has_looting if predicate survival_chaos:random/forty_percent run function survival_chaos:head_drops/reward_wither_skeleton
execute unless predicate survival_chaos:has_looting if predicate survival_chaos:random/ten_percent run function survival_chaos:head_drops/reward_wither_skeleton

