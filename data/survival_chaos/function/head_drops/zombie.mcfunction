# Zombie Head Drop - triggered by advancement
advancement revoke @s only survival_chaos:head_drops/zombie_kill
execute if predicate survival_chaos:random/ten_percent run function survival_chaos:head_drops/reward_zombie
