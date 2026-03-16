# ============================================
# Corrupted Bed - Sleep Disruption Horror
# Chance to explode bed or teleport player
# ============================================

# 10% chance during night terrors or Blood Moon
execute if predicate survival_chaos:random/ten_percent run function survival_chaos:horror/corrupted_bed_trigger
