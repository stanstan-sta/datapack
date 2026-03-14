# ☠ Survival Chaos - Minecraft Datapack

**Makes survival fun again!** A Minecraft datapack that adds random events, mob head drops, night terrors, custom recipes, and more to keep your singleplayer survival experience exciting and unpredictable.

**Compatible with:** Minecraft Java Edition 1.21+

## Features

### 🎲 Random Events (every 3 minutes)
Five random events trigger periodically, each with an equal 20% chance:

| Event | Description |
|-------|-------------|
| ✦ **Treasure Drop** | Receive random valuable items — diamonds, emeralds, gold, food, and XP bottles |
| ☠ **Mob Ambush** | Hostile mobs spawn around you — zombies, skeletons, spiders, witches, and sometimes creepers |
| ✧ **Mysterious Force** | Random potion effects (good or bad!) — you might get speed and strength, or nausea and blindness |
| ⚡ **Lightning Storm** | Lightning bolts strike near you — seek shelter or risk the chaos |
| 🦇 **Phantom Wave** | Phantoms descend from above, even during the day |

### 💀 Mob Head Drops (10% chance)
Kill these mobs for a chance to collect their heads as trophies:
- Zombie → Zombie Head
- Skeleton → Skeleton Skull
- Creeper → Creeper Head
- Wither Skeleton → Wither Skeleton Skull

### 🎒 Starter Kit
First-time players automatically receive:
- Stone pickaxe, axe, and sword
- 16 torches and 16 cooked beef
- White bed, shield, and oak boat

### 🌙 Night Terrors
During nighttime (every 30 seconds):
- Spooky ambient sounds (cave ambience, phantom cries, enderman stares)
- Extra hostile mob spawns nearby
- Eerie smoke and soul fire particles

### ⚠ Creeper Proximity Warning
A warning system that checks every second:
- Red actionbar alert when a creeper is within 15 blocks
- Warning bass note sound effect

### 💪 Adrenaline Rush
When your health drops to 4 hearts or below:
- Speed I for 5 seconds
- Resistance I for 5 seconds
- Helps you escape dangerous situations

### 🔨 Custom Recipes

**Name Tag:**
```
 S
SI
 P
```
S = String, I = Iron Ingot, P = Paper

**Saddle:**
```
LLL
L L
I I
```
L = Leather, I = Iron Ingot

## Installation

1. Download or clone this repository
2. Place the entire folder (containing `pack.mcmeta` and `data/`) into your world's `datapacks` folder:
   - **Windows:** `%appdata%\.minecraft\saves\<world>\datapacks\`
   - **macOS:** `~/Library/Application Support/minecraft/saves/<world>/datapacks/`
   - **Linux:** `~/.minecraft/saves/<world>/datapacks/`
3. Open your world (or run `/reload` if already in-game)
4. You should see the "Survival Chaos loaded!" message in chat

## Commands

- `/reload` — Reload the datapack
- `/function survival_chaos:init` — Reinitialize scoreboards and timers
- `/function survival_chaos:events/trigger_event` — Manually trigger a random event

## Technical Details

### Pack Structure
```
pack.mcmeta
data/
├── minecraft/tags/function/     # tick.json & load.json hooks
└── survival_chaos/
    ├── function/                # All .mcfunction files
    │   ├── init.mcfunction      # Scoreboard setup
    │   ├── tick.mcfunction      # Main game loop
    │   ├── events/              # 5 random event functions
    │   ├── head_drops/          # Mob head drop handlers
    │   ├── starter/             # First-join starter kit
    │   ├── night/               # Night terror effects
    │   ├── warnings/            # Creeper proximity alerts
    │   └── effects/             # Adrenaline rush system
    ├── advancement/             # Kill triggers & new player detection
    ├── predicate/random/        # Random chance predicates
    └── recipe/                  # Custom crafting recipes
```

### Randomness System
Events use a **predicate cascade** for uniform random selection:
- Check 1/5 chance → if true, pick Event 1
- Check 1/4 chance → if true, pick Event 2 (1/4 × 4/5 = 1/5 overall)
- Check 1/3 chance → if true, pick Event 3 (1/3 × 3/5 = 1/5 overall)
- Check 1/2 chance → if true, pick Event 4 (1/2 × 2/5 = 1/5 overall)
- Fallback → Event 5 (1/5 overall)

This ensures each event has exactly 20% probability using only `random_chance` predicates.
