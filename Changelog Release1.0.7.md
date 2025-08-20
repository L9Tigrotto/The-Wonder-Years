# The Wonder Years Changelog Version 1.0.7

## 📋 General Updates

*List administrative changes, modpack-wide modifications, and other general updates.*

- Fixed crash when changing dimensions (through portal or command).

- Known bug: tierable items crafted in the crafting terminal with `shift + left click` will be tierless. Waiting for response from Tom's Simple Storage on bug report.
- Known bug: equipment comparison is not currently working with tiered items. Waiting for response from Equipment Compare on bug report.
- Known bug: Anvil repair cost is currently free and is limited to a maximum of 63 `repair_cost` in metadata. Waiting for Better Enchanting mod update.

- Rewrote pot loot chests (now no longer drop disabled essences).
- Fixed tipped arrow not having effects in some loot chests.
- Fixed issue where only 1 variant of goat horn gets generated in pillager outpost.
- Changed item tier distribution to be equal to the overworld one. In the Nether common and uncommon tiers are discarded. In the End common, uncommon and rare tiers are discarded.
- Added pattern to generated elytras.

- Added variants to quest's tasks.
- Added the possibility to remove 1 specific enchantment.
- Disabled curse of enchant, it doesn't work with the better enchanting mod.

- Made backup run Daily.

## ⚙️ Settings Changed

*List all configuration changes organized by mod.*

**Dynamic tooltip:**

- Changed default keybind to `left shift`.

**Fabrishot:**

- Removed separated hotkey for screenshots (`F2` only).

**FTB Quests:**

- Questbook is no longer dropped on death.
- Made trophy rewards per player and not per team.
- Added enchantment removal quest to Gear Up chapter.

**Immersive melodies:**

- Lowered the music volume just a bit.
- Decreased the mob spawn rate with an instrument.

---

## ❌ Mods Removed

*List all mods that were removed with reasons.*

- **Trinkets**: Crash when changing dimension.
- **Accessories Compatibility Layer**: Crash when changing dimension.
- **Weather Settings**: Back to the vanilla raining system.
- **Auto Third Person**: Not working with the vanilla backport.
- **Couplings Revamped**: No configuration for range.
- **Indium**: No longer needed for sodium.

---

## ➕ Mods Added

*List all newly added mods with reasons.*

- **Trinkets Compat Layer for Accessories**: Replaces Accessories Compatibility Layer.
- **FTB Filter System**: Allows asking for any item in a specific tag in quest tasks.
- **FTB XMod Compat**: Allows asking for any item in a specific tag in quest tasks.
- **Respawning Animals**: Animals will now despawn and respawn in areas as you explore.
- **Double Doors**: Replaces Couplings Revamped.
- **FindMe**: Allows you to search for items in nearby inventories by pressing Y on the item (also from jei).
- **Leaf Me Alone**: Allows any entity to move through leaves blocks as long as it has a passenger that can control it.

---

## ⬆️ Mods Updated

*List all mods that were updated with their version changes.*

- **Fabric**: `v0.16.14` → `v0.17.02`
- **Storage Drawers**: `v13.9.2` → `v13.10.0`
- **Tectonic**: `v3.0.7` → `v3.0.10`
- **DashLoader**: `v5.0.0` → `v5.1.0`
- **Underlay**: `v0.9.5` → `v0.9.6`
- **Archievements Optimizer**: `v2.0.0` → `v2.1.0`
- **FTB Chunks**: `v2101.1.9` → `v2101.1.10`
- **Fabric Language Kotlin**: `v1.13.4` → `v1.13.5`
