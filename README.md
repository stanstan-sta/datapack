# ☠ Survival Chaos - Minecraft Datapack

**Makes survival fun again!** A Minecraft datapack that adds random events, Blood Moon sieges, psychological horror, mob head drops, night terrors, custom recipes, and more to keep your survival experience exciting, unpredictable, and terrifying.

**Compatible with:** Minecraft Java Edition 1.21+

## Features

### ⚙️ Configurable Settings
Customize your experience with `/function survival_chaos:config/menu`:
- **Event Interval:** Choose between 1, 3, 5, or 10 minute intervals
- **Toggle Features:** Enable/disable Blood Moon, Permadeath, Creeper Warnings, Mob Head Drops, Paranoia Effects, and Grue (Darkness Damage)

### 🎲 Random Events (Configurable interval, default 3 minutes)
Ten random events trigger periodically, each with an equal ~10% chance:

| Event | Description |
|-------|-------------|
| ✦ **Treasure Drop** | Receive random valuable items — diamonds, emeralds, gold, food, and XP bottles |
| ☠ **Mob Ambush** | Hostile mobs spawn around you — zombies, skeletons, spiders, witches, and sometimes creepers |
| ✧ **Mysterious Force** | Random potion effects (good or bad!) — you might get speed and strength, or nausea and blindness |
| ⚡ **Lightning Storm** | Lightning bolts strike near you — seek shelter or risk the chaos |
| 🦇 **Phantom Wave** | Phantoms descend from above, even during the day |
| 🌀 **Gravity Shift** | Experience unstable gravity with levitation and slow falling effects |
| 🌾 **Bountiful Harvest** | Crops in a large radius around you instantly grow to maturity |
| 🟢 **Slime Rain** | Slimes rain from the sky in various sizes |
| 🌑 **Total Darkness** | Brief period of complete darkness and blindness |
| 🩸 **Blood Moon** | Low chance to trigger an emergency Blood Moon outside the normal cycle |

### 🩸 Blood Moon Siege (Every 7 in-game days)
A terrifying event that transforms the night into a deadly gauntlet:
- **Red Sky:** World border warning creates an ominous red tint
- **Enhanced Mobs:** All hostile mobs gain Speed II and Strength I
- **Block Breaking:** Zombies and creepers can break through glass, wooden doors, and wooden planks
- **Relentless Spawning:** Extra mobs continuously spawn near players
- **Permadeath:** If enabled, death during Blood Moon switches you to spectator mode permanently
- **Torch Blowout:** Torches extinguish randomly, leaving you in darkness
- **Duration:** Lasts until dawn arrives

### 👁️ Paranoia & Hallucinations
Psychological horror effects that mess with your mind:
- **Phantom Hiss:** Hear creeper sounds with no creeper present
- **The Stalker:** Mysterious armor stands spawn in the distance and vanish
- **Cave Whispers:** Underground players hear unsettling footsteps and muffled sounds
- Triggers every 10 seconds with various chances

### 🌑 Grue - Darkness Mechanic
Stand in complete darkness (light level 0) at your own peril:
- **Warning:** After 3 seconds, you'll be warned something lurks
- **Attack:** After 5 seconds, continuous damage, Darkness effect, and heartbeat sounds
- **Escape:** Get to light immediately to survive

### 👹 Terrifying Mob Mutations
Encounter horrifying variants of normal mobs:
- **Weeping Zombies:** Invincible zombies that freeze when you look at them (like Weeping Angels)
- **Ghost Spiders:** Invisible spiders with only glowing eyes visible
- **Silent Creepers:** Creepers that make no sound before exploding

### 🧠 Sanity System
Your mental state deteriorates over time and affects your experience:
- **Sanity Loss:** Lose sanity when underground (below Y=50) or not sleeping
- **Sanity Restoration:** Recover sanity by sleeping
- **Low Sanity Effects (below 30):**
  - Elder Guardian jumpscare with mining fatigue
  - Visual distortions (nausea)
  - Auditory hallucinations (ghast screams, enderman sounds)
  - Soul particle effects
- **Critical Sanity (below 10):** More frequent and severe effects

### 🌫️ Environmental Horror
Random environmental effects create a claustrophobic atmosphere:
- **Flash Blindness:** Sudden blindness with thunder sounds
- **Dense Fog:** Darkness effect with thick smoke particles
- **Corrupted Bed:** During Blood Moon or low sanity:
  - 50% chance bed explodes with TNT
  - 50% chance teleports you to a dark cave with blindness
- Triggers during paranoia checks

### 💀 Mob Head Drops
Kill these mobs for a chance to collect their heads as trophies:
- **Base Chance:** 10% per kill
- **With Looting:** 40% per kill (any level of Looting enchantment)
- **Mobs:** Zombie, Skeleton, Creeper, Wither Skeleton
- Can be disabled in config menu

### 🎒 Starter Kit
First-time players automatically receive:
- Stone pickaxe, axe, and sword
- 16 torches and 16 cooked beef
- White bed, shield, and oak boat

### 🌙 Enhanced Night Terrors
During nighttime (every 30 seconds):
- Spooky ambient sounds (cave ambience, phantom cries, enderman stares)
- Extra hostile mob spawns nearby
- Eerie smoke and soul fire particles
- **Sleep Disruption:** 30% chance for phantoms to spawn when you try to sleep

### ⚠ Creeper Proximity Warning
A warning system that checks every second:
- Red actionbar alert when a creeper is within 15 blocks
- Warning bass note sound effect
- Can be disabled in config menu

### 💪 Enhanced Adrenaline Rush
When your health drops to 4 hearts or below:
- Speed I for 5 seconds
- Resistance I for 5 seconds
- **Heartbeat sound effect** for immersion
- **Flame particles** for visual feedback
- Actionbar message: "⚠ ADRENALINE RUSH! ⚠"

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

**Cobweb:**
```
SSS
S S
SSS
```
S = String

**Iron Horse Armor:**
```
III
I I
III
```
I = Iron Ingot

**Golden Horse Armor:**
```
GGG
G G
GGG
```
G = Gold Ingot

**Diamond Horse Armor:**
```
DDD
D D
DDD
```
D = Diamond

**Bell:**
```
IGI
GNG
IGI
```
I = Iron Ingot, G = Gold Ingot, N = Iron Nugget

**Ender Eye:**
```
 E
ESE
 E
```
E = Ender Pearl, S = Spider Eye

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
- `/function survival_chaos:config/menu` — Open the configuration menu (customize settings)
- `/function survival_chaos:events/trigger_event` — Manually trigger a random event
- `/function survival_chaos:blood_moon/start` — Manually trigger a Blood Moon event

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
    │   ├── config/              # Configuration menu & toggles
    │   ├── events/              # 10 random event functions
    │   ├── blood_moon/          # Blood Moon siege system
    │   ├── horror/              # Paranoia, Grue, and horror effects
    │   ├── mobs/                # Terrifying mob variants
    │   ├── head_drops/          # Mob head drop handlers
    │   ├── starter/             # First-join starter kit
    │   ├── night/               # Night terror effects
    │   ├── warnings/            # Creeper proximity alerts
    │   └── effects/             # Adrenaline rush system
    ├── advancement/             # Kill triggers & new player detection
    ├── predicate/               # Random chance & conditional predicates
    └── recipe/                  # Custom crafting recipes (8 total)
```

### Randomness System
Events use a **predicate cascade** for uniform random selection across 10 events:
- Check 1/10 chance → if true, pick Event 1
- Check 1/9 chance → if true, pick Event 2 (1/9 × 9/10 = 1/10 overall)
- Check 1/8 chance → if true, pick Event 3 (1/8 × 8/10 = 1/10 overall)
- ...and so on through 1/2 chance
- Fallback → Event 10 (1/10 overall)

This ensures each event has exactly 10% probability using only `random_chance` predicates.

### Configuration System
Settings are stored in scoreboard objectives and can be toggled via clickable chat menus. All features can be independently enabled/disabled, and event intervals can be customized to suit your playstyle.

### Blood Moon Cycle
The Blood Moon uses a tick-based timer (168,000 ticks = 7 in-game days = ~2.3 real-world hours). When triggered, it automatically ends at dawn and resets the cycle.

### Multiplayer Compatibility
Most features are player-specific and work correctly in multiplayer:
- Random events affect all online players
- Blood Moon is global but permadeath is per-player
- Configuration changes affect the entire server
- Horror effects and paranoia are individual experiences

